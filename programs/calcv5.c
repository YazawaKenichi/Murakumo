// センサの設置位置の算出

#include <stdio.h>
#include <math.h>

void main()
{
    // 半径
    long double radius[2] = {55, 150};    // 半径
    long double alpha = 2;

    // 変数
    long double theta, r;
    long double x, y;

    theta = acos((19 / 2 + alpha) / radius[1]);
    r = radius[1];
    x = r * cos(theta) / 100;
    y = r * sin(theta) / 100;
    theta = theta * 360 / 2 / M_PI;
    printf("%Lf, %Lf, %Lf\n", x * 100, y * -100, theta);
    theta = theta * 2 * M_PI / 360;
}



