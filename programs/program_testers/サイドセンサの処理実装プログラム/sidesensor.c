#include <stdio.h>

#define BCD(c) (__bits__[c])
static const unsigned int __bits__[] = {
           0,        1,       10,       11,      100,      101,     110,       111,
               1000,     1001,     1010,     1011,     1100,     1101,    1110,      1111,
                  10000,    10001,    10010,    10011,    10100,    10101,    10110,    10111,
                     11000,    11001,    11010,    11011,    11100,    11101,    11110,    11111,
                       100000,   100001,   100010,   100011,   100100,   100101,   100110,   100111,
                         101000,   101001,   101010,   101011,   101100,   101101,   101110,   101111,
                           110000,   110001,   110010,   110011,   110100,   110101,   110110,   110111,
                             111000,   111001,   111010,   111011,   111100,   111101,   111110,   111111,
                              1000000,  1000001,  1000010,  1000011,  1000100,  1000101,  1000110,  1000111,
                               1001000,  1001001,  1001010,  1001011,  1001100,  1001101,  1001110,  1001111,
                                1010000,  1010001,  1010010,  1010011,  1010100,  1010101,  1010110,  1010111,
                                 1011000,  1011001,  1011010,  1011011,  1011100,  1011101,  1011110,  1011111,
                                  1100000,  1100001,  1100010,  1100011,  1100100,  1100101,  1100110,  1100111,
                                   1101000,  1101001,  1101010,  1101011,  1101100,  1101101,  1101110,  1101111,
                                    1110000,  1110001,  1110010,  1110011,  1110100,  1110101,  1110110,  1110111,
                                     1111000,  1111001,  1111010,  1111011,  1111100,  1111101,  1111110,  1111111,
                                     10000000, 10000001, 10000010, 10000011, 10000100, 10000101, 10000110, 10000111,
                                     10001000, 10001001, 10001010, 10001011, 10001100, 10001101, 10001110, 10001111,
                                     10010000, 10010001, 10010010, 10010011, 10010100, 10010101, 10010110, 10010111,
                                     10011000, 10011001, 10011010, 10011011, 10011100, 10011101, 10011110, 10011111,
                                     10100000, 10100001, 10100010, 10100011, 10100100, 10100101, 10100110, 10100111,
                                     10101000, 10101001, 10101010, 10101011, 10101100, 10101101, 10101110, 10101111,
                                     10110000, 10110001, 10110010, 10110011, 10110100, 10110101, 10110110, 10110111,
                                     10111000, 10111001, 10111010, 10111011, 10111100, 10111101, 10111110, 10111111,
                                     11000000, 11000001, 11000010, 11000011, 11000100, 11000101, 11000110, 11000111,
                                     11001000, 11001001, 11001010, 11001011, 11001100, 11001101, 11001110, 11001111,
                                     11010000, 11010001, 11010010, 11010011, 11010100, 11010101, 11010110, 11010111,
                                     11011000, 11011001, 11011010, 11011011, 11011100, 11011101, 11011110, 11011111,
                                     11100000, 11100001, 11100010, 11100011, 11100100, 11100101, 11100110, 11100111,
                                     11101000, 11101001, 11101010, 11101011, 11101100, 11101101, 11101110, 11101111,
                                     11110000, 11110001, 11110010, 11110011, 11110100, 11110101, 11110110, 11110111,
                                     11111000, 11111001, 11111010, 11111011, 11111100, 11111101, 11111110, 11111111,
};

void main()
{
    unsigned short int subsens = 0, subsensbuf = 0, marker = 0, count = 0, first = 0, second = 0, markerstate = 0, buffer = 0;
    unsigned short int leftsensor = 0, rightsensor = 0;

    while(1)
    {
        /*
        printf("leftsensor = ");
        leftsensor = getchar();
        while(getchar() != '\n')
        {
            
        }
        printf("rightsensor = ");
        rightsensor = getchar();
        while(getchar() != '\n')
        {
            
        }
        */
        printf("leftsensor = ");
        scanf("%hu%*c", &leftsensor);
        printf("rightsensor = ");
        scanf("%hu%*c", &rightsensor);
        printf("leftsensor = 0b%08d, rightsensor = 0b%08d\n", BCD(leftsensor), BCD(rightsensor));

        subsens = (rightsensor != 0) ? 1 : 0; // right
        subsens += (leftsensor != 0) ? 2 : 0; // left
        printf("subsens = 0b%08d, subsensbuf = 0b%08d\n", BCD(subsens), BCD(subsensbuf));

        if(subsens != subsensbuf)
        {
            subsensbuf = subsens;
            printf("if(subsens != subsensbuf)\n");
            marker += subsens << (2 * count);
            printf("marker = 0b%08d, count = %d\n", BCD(marker), count);
            if(subsens == 0b00 && count != 0)
            {
                printf("if(subsens == 0b00 && count != 0)\n");
                first = (marker & 0b0011);
                printf("first = 0b%08d, ", BCD(first));
                second = (marker & 0b1100) >> 2;
                printf("second = 0b%08d\n", BCD(second));
                if(second == 0b00)
                {
                    if(first == 0b01)
                    {
                        // right
                        printf("right -> stop\n");
                        markerstate = 0b01;
                    }
                    else if(first == 0b10)
                    {
                        // left
                        printf("left -> curve\n");
                        markerstate = 0b10;
                    }
                    else
                    {
                        // cross
                        printf("cross\n");
                        markerstate = 0b11;
                    }
                }
                //else if(second == 0b11)
                else
                {
                    // cross
                    printf("cross\n");
                    markerstate = 0b11;
                }
                printf("count = 0, buffer = 0, marker = 0\n");
                count = 0;
                buffer = 0;
                marker = 0;
            }
            else
            {
                count++;
                printf("count = %d\n", count);
            }
        }
    }
}


