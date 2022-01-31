// センサの設置位置の算出

#include <stdio.h>
#include <math.h>

void main()
{
    unsigned short int sensorcount[2] = {12, 4};   // 手前センサの数

    // 角度
    long double degree[2] = {90, 18.6};    // 配置可能角度
    // 半径
    long double radius[2] = {55, 150};    // 半径

    // 変数
    int j;
    long double theta, r;
    long double x, y;

//    printf("%d\n", sensorcount * 2);
    printf("Partsnum: (   x   ,    y   ,    r   )\n");
    for(int k = 0; k < 2; k++)
    {
        for(int i = 1; i <= sensorcount[k] * 2; i++)
        {
    //        printf("i = %d\n", i);
            if(i % 2 == 1)
            {
                j = i / 2 + 1;
                theta = 2 * M_PI * (90 + degree[k] / 2 - i * degree[k] / sensorcount[k] / 2) / 360;
                r = radius[k];
                printf("\033[0m");
                x = r * cos(theta) / 100;
                y = r * sin(theta) / 100;
                theta = theta * 360 / 2 / M_PI;
                printf("Parts%2d : (%7.3Lf, %7.3Lf, %7.3Lf)\n",j, x * 100, y * -100, theta);
                theta = theta * 2 * M_PI / 360;
            }
        }
        printf("\n");
    }
}



