#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <GL/gl.h>
#include "recomp.h"

#define WIDTH 256
#define HEIGHT 192

static HGLRC gl_context;
static RecompMachine machine;
static unsigned char framebuffer[WIDTH * HEIGHT * 3];

static void draw_frame(HDC dc) {
    unsigned int x, y;
    for (y = 0; y < HEIGHT; ++y) for (x = 0; x < WIDTH; ++x) {
        unsigned int at = (y * WIDTH + x) * 3u;
        framebuffer[at] = (unsigned char)x;
        framebuffer[at + 1] = (unsigned char)y;
        framebuffer[at + 2] = machine.halted ? 48u : 160u;
    }
    glViewport(0, 0, WIDTH, HEIGHT);
    glRasterPos2i(-1, -1);
    glPixelZoom(1.0f, 1.0f);
    glDrawPixels(WIDTH, HEIGHT, GL_RGB, GL_UNSIGNED_BYTE, framebuffer);
    SwapBuffers(dc);
}

static LRESULT CALLBACK window_proc(HWND window, UINT message, WPARAM wparam, LPARAM lparam) {
    if (message == WM_DESTROY) { PostQuitMessage(0); return 0; }
    return DefWindowProc(window, message, wparam, lparam);
}

int WINAPI WinMain(HINSTANCE instance, HINSTANCE previous, LPSTR command_line, int show) {
    WNDCLASS wc;
    HWND window;
    HDC dc;
    PIXELFORMATDESCRIPTOR pfd;
    MSG message;
    int pixel_format;
    (void)previous; (void)command_line; (void)show;
    ZeroMemory(&wc, sizeof(wc));
    wc.lpfnWndProc = window_proc; wc.hInstance = instance; wc.lpszClassName = "AkimwRecomp";
    wc.hCursor = LoadCursor(NULL, IDC_ARROW);
    if (!RegisterClass(&wc)) return 1;
    window = CreateWindow("AkimwRecomp", "Akimw recomp", WS_OVERLAPPEDWINDOW | WS_VISIBLE,
        CW_USEDEFAULT, CW_USEDEFAULT, WIDTH * 2, HEIGHT * 2, NULL, NULL, instance, NULL);
    if (!window) return 1;
    dc = GetDC(window);
    ZeroMemory(&pfd, sizeof(pfd)); pfd.nSize = sizeof(pfd); pfd.nVersion = 1;
    pfd.dwFlags = PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER;
    pfd.iPixelType = PFD_TYPE_RGBA; pfd.cColorBits = 24; pfd.cDepthBits = 16; pfd.iLayerType = PFD_MAIN_PLANE;
    pixel_format = ChoosePixelFormat(dc, &pfd);
    if (!pixel_format || !SetPixelFormat(dc, pixel_format, &pfd)) return 1;
    gl_context = wglCreateContext(dc);
    if (!gl_context || !wglMakeCurrent(dc, gl_context)) return 1;
    recomp_reset(&machine);
    while (1) {
        while (PeekMessage(&message, NULL, 0, 0, PM_REMOVE)) {
            if (message.message == WM_QUIT) goto done;
            TranslateMessage(&message); DispatchMessage(&message);
        }
        recomp_run_slice(&machine, 2000u);
        draw_frame(dc);
    }
done:
    wglMakeCurrent(NULL, NULL); wglDeleteContext(gl_context); ReleaseDC(window, dc);
    return 0;
}
