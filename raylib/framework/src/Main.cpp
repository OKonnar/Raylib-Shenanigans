#include "raylib.h"
#include "raymath.h"

int main() {
    // Initialization
    int screenWidth = 800;
    int screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "raylib [textures] example - texture loading and drawing");

    // Load image
    Image image = LoadImage("my_image.png");  // Loaded in CPU memory (RAM)

    // Convert image to texture (GPU memory - VRAM)
    Texture2D texture = LoadTextureFromImage(image);

    // Once the image has been converted to texture and uploaded to VRAM, it can be unloaded from RAM
    UnloadImage(image);

    SetTargetFPS(60);

    // Main game loop
    while (!WindowShouldClose()) {    // Detect window close button or ESC key
        // Update

        // Draw
        BeginDrawing();

        ClearBackground(BLACK);

        // Draw our texture centered
        DrawTextureV(texture, (Vector2){ (GetScreenWidth() - texture.width)/2, (GetScreenHeight() - texture.height)/2 }, WHITE);

        EndDrawing();
    }

    // De-Initialization
    UnloadTexture(texture);       // Texture unloading

    CloseWindow();                // Close window and OpenGL context

    return 0;
}