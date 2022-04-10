// センサの設置位置の算出

#include <stdio.h>
#include <math.h>

void main()
{
    // 半径
    long double radius[] = {150, 150, 152, 152};    // 半径
    long double alpha[] = {2, 7.5, 7.5, 2};

    // 変数
    long double theta, r;
    long double x, y;
    long double a;

    for(int i = 0; i < 4; i++)
    {
        a = alpha[i];
        r = radius[i];
        theta = acos((19 + 2 * a) / 2 / radius[i]);
        x = r * cos(theta) / 100;
        y = r * sin(theta) / 100;
        theta = theta * 360 / 2 / M_PI;
        printf("%8.3Lf, %8.3Lf, %6.3Lf\n", -x * 100, y * -100, 180 - theta);

        a = -alpha[i];
        r = radius[i];
        theta = acos((19 + 2 * a) / 2 / radius[i]);
        x = r * cos(theta) / 100;
        y = r * sin(theta) / 100;
        theta = theta * 360 / 2 / M_PI;
        printf("%8.3Lf, %8.3Lf, %6.3Lf\n", -x * 100, y * -100, 180 - theta);

        a = -alpha[i];
        r = radius[i];
        theta = acos((19 + 2 * a) / 2 / radius[i]);
        x = r * cos(theta) / 100;
        y = r * sin(theta) / 100;
        theta = theta * 360 / 2 / M_PI;
        printf("%8.3Lf, %8.3Lf, %6.3Lf\n", x * 100, y * -100, theta);

        a = alpha[i];
        r = radius[i];
        theta = acos((19 + 2 * a) / 2 / radius[i]);
        x = r * cos(theta) / 100;
        y = r * sin(theta) / 100;
        theta = theta * 360 / 2 / M_PI;
        printf("%8.3Lf, %8.3Lf, %6.3Lf\n", x * 100, y * -100, theta);

        printf("\n");
    }
}



