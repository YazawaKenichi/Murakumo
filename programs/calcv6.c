// センサの設置位置の算出

#include <stdio.h>
#include <math.h>

void main()
{
    unsigned short int sensorcount = 10;   // 手前センサの数

    // 角度
    long double degree = 90;    // 配置可能角度
    // 半径
    long double radius = 55;    // 半径

    // 変数
    int j;
    long double theta, r;
    long double x, y;

//    printf("%d\n", sensorcount * 2);
    for(int i = 1; i <= sensorcount * 2; i++)
    {
//        printf("i = %d\n", i);
        if(i % 2 == 1)
        {
            j = i / 2 + 1;
            theta = 2 * M_PI * (90 + degree / 2 - i * degree / sensorcount / 2) / 360;
            r = radius;
            printf("\033[0m");
            x = r * cos(theta) / 100;
            y = r * sin(theta) / 100;
            theta = theta * 360 / 2 / M_PI;
            printf("    (at %Lf %Lf)\n", x * 100, y * -100);
            theta = theta * 2 * M_PI / 360;
        }
    }
    printf("\n");
}



