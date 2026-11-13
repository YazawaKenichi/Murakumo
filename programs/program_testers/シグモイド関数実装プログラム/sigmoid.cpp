#include <iostream>

using namespace std;

int main()
{
    int a, b;

    cout << "y = " << power(a, b);

    return 0;
}

double power(double a, int b)
{
    double r;
    r = 1;
    for(int i = (b < 0) ? -b : b; i > 0; i--)
    {
        r = (b < 0) ? r / a : r * a;
    }

    return r;
}

