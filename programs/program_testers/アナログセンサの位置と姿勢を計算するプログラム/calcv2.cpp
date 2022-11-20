// センサの設置位置の算出

// #include <stdio.h>
#include <iostream>
#include <GL/glut.h>
#include <math.h>

typedef struct
{
    int X;
    int Y;
} WindowSize;

static const unsigned short int ms = 1; // mil sec
static const WindowSize WINDOWSIZE = {600, 600};

unsigned short int sensorcount = 12;   // 手前センサの数
unsigned short int sensorcountalt = 4; // 奥センサの数

// 角度
long double degree = 90;    // 配置可能角度
long double altdegree = 26.5; // 前に出すセンサの配置可能角
// 半径
long double radius = 55;    // 半径
long double altradius = 140; // 前に出すセンサの配置半径

// 変数
int j;
long double theta, r;
long double x, y;

//////////////////////////// 以下 コールバック関数 display //////////////////////

void display(void)
{
    glClearColor(0.0, 0.0, 0, 1); // バッファを塗りつぶしたい色
    glClear(GL_COLOR_BUFFER_BIT); // 指定したバッファを特定の色で消去する。 

    glBegin(GL_LINES);

//    printf("%d\n", sensorcount * 2);
    printf("Partsnum: (   x   ,    y   ,    r   )\n");
    for(int i = 1; i <= sensorcount * 2; i++)
    {
//        glColor3f(i / sensorcount / 2, 1, 1);
//        printf("i = %d\n", i);
        if(i % 2 == 1)
        {
            glColor3f(1, 1, 1);
            j = i / 2 + 1;
            theta = 2 * M_PI * (90 + degree / 2 - i * degree / sensorcount / 2) / 360;
            r = radius;
            printf("\033[0m");
            x = r * cos(theta) / 100;
            y = r * sin(theta) / 100;
            theta = theta * 360 / 2 / M_PI;
            printf("Parts%2d : (%7.3Lf, %7.3Lf, %7.3Lf)", j, x * 100, y * 100, theta);
            glVertex2d(0, 0);
            glVertex2d(x * 0.5, y * 0.5);
            theta = theta * 2 * M_PI / 360;

            if(2 * M_PI * (90 + altdegree / 2) / 360 >= theta && theta >= 2 * M_PI * (90 - altdegree / 2) / 360)
            {
                glColor3f(0, 1, 1);
                r = altradius;
                x = r * cos(theta) / 100;
                y = r * sin(theta) / 100;
                theta = theta * 360 / 2 / M_PI;
                printf(", \033[32mParts%2d_ALT : (%7.3Lf, %7.3Lf, %7.3Lf)\n", j, x * 100, y * 100, theta);
                glVertex2d(0, 0);
                glVertex2d(x * 0.5, y * 0.5);
            }
            else
            {
                printf("\n");
            }
        }
    }

    glEnd();
//    glFlush();
    glutSwapBuffers();    // 処理の強制実行。   // glutSwapBuffers() は、glInitDisplayMode() で GL_DOUBLE を指定したときにだけ
}
///////////////////////////////////// 以上 被コールバック関数 display ///////////////////////////////////

int main(int argc, char *argv[])
{
    glutInit(&argc, argv);    // GLUT の初期化。
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA);   // ウィンドウのカラーモデルやバッファの設定を行うための関数。
    glutInitWindowSize(WINDOWSIZE.X, WINDOWSIZE.Y);
    glutCreateWindow("");    // ウィンドウを生成。
    glClearColor(0, 0, 0, 0);
    glShadeModel(GL_FLAT);

    glutDisplayFunc(display); // ウィンドウの再描画が必要であると判断された時に呼び出される。ディスプレイコールバックの登録。

    glutMainLoop();   // GLUT がイベント処理ループに入るようにする。こうすればトップレベルウィンドウが破棄されるまで処理は戻ってこない。
    return 0;
}

