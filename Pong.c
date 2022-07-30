// by hisham "Exdra"

// including the header files
#include <raylib.h>
#include <stdio.h>

int main() {
    // window varibles
    const int windowwidth = 640;
    const int windowheight = 480;

    // the paddles
    Rectangle pad1 = { 44,44,16,96 };
    Rectangle pad2 = { 580,44,16,96 };

    // the speed of the paddles
    float pad1speed = 1.0;
    float pad2speed = 1.0;

    // screen borders
    Rectangle border1 = { -1,-1,641,1 };
    Rectangle border2 = { -1,481,641,1 };
    Rectangle border3 = { 641,-1,1,481 };
    Rectangle border4 = { -1,-1,1,481 };

    // the ball
    Vector2 ballPosition = { 320, 240 };
    Vector2 ballSpeed = { -0.4f, -0.4f };
    int ballRadius = 8;

    // score variables
    int score1 = 0;
    int score2 = 0;

    // initlizing the window
    InitWindow(windowwidth, windowheight, "Pong");
    SetTargetFPS(556);

    // main game loop
    while (!WindowShouldClose())
    {

        // applying the speed on the ball
        ballPosition.x += ballSpeed.x;
        ballPosition.y += ballSpeed.y;

        // ball collisions
        if (CheckCollisionCircleRec(ballPosition, ballRadius, border1))
        {
            ballSpeed.y *= -1;
        }
        if (CheckCollisionCircleRec(ballPosition, ballRadius, border2))
        {
            ballSpeed.y *= -1;
        }


        if (CheckCollisionCircleRec(ballPosition, ballRadius, pad1))
        {
            ballSpeed.x *= -1;
        }
        if (CheckCollisionCircleRec(ballPosition, ballRadius, pad2))
        {
            ballSpeed.x *= -1;
        }

        if (CheckCollisionCircleRec(ballPosition, ballRadius, border3))
        {
            ballPosition.x = 320;
            ballPosition.y = 240;
            score1 += 1;
        }
        if (CheckCollisionCircleRec(ballPosition, ballRadius, border4))
        {
            ballPosition.x = 320;
            ballPosition.y = 240;
            score2 += 1;
        }

        // drawing loop
        BeginDrawing();

        // background color
        ClearBackground(BLACK);

        // drawing the borders
        DrawRectangleRec(border1, WHITE);
        DrawRectangleRec(border2, WHITE);
        DrawRectangleRec(border3, WHITE);
        DrawRectangleRec(border4, WHITE);

        // setting up the paddles
        DrawRectangleRec(pad1, WHITE);

        if (IsKeyDown(KEY_W)) {
            pad1.y -= pad1speed;
        }
        if (IsKeyDown(KEY_S)) {
            pad1.y += pad1speed;
        }

        DrawRectangleRec(pad2, WHITE);

        if (IsKeyDown(KEY_DOWN)) {
            pad2.y += pad2speed;
        }
        if (IsKeyDown(KEY_UP)) {
            pad2.y -= pad2speed;
        }

        // drawing the ball
        DrawCircleV(ballPosition, (float)ballRadius, WHITE);

        // drawing the score counters
        DrawText(TextFormat("Score: %d", score1), 44, 44, 20, RED);
        DrawText(TextFormat("Score: %d", score2), 522, 44, 20, BLUE);

        EndDrawing();
    }
}
