#include <iostream>

#define CALIBRATIONSIZE 12

using namespace std;

int main()
{
    uint16_t analogmin = 4095, analogmax = 0, analograte;

    while(1)
    {
        uint16_t analog;

        cout << "uint16_t analog = ";
        cin >> analog;

        if(analogmax < analog)
        {
            analogmax = analog;
        }
        if(analog < analogmin)
        {
            analogmin = analog;
        }

        if(analogmax != analogmin)
        {
            analograte = (analog - analogmin) * 1000 / (analogmax - analogmin);
            cout << "analograte = " << analograte << endl;
        }
    }
}



