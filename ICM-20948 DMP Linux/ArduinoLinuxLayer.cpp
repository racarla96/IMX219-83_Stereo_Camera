#include "ArduinoLinuxLayer.h"

/** 
 * Pauses the program for the amount of time (in milliseconds) 
 * specified as parameter. (There are 1000 milliseconds in a second.)
 * 
 * @param ms the number of milliseconds to pause.
 * 
 **/
void delay(unsigned long ms)
{
    usleep(ms * 1000);
}