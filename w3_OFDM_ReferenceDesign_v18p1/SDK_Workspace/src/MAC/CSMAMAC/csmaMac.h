/*! \file csmaMac.c
 \brief Carrier-Sensing Random Access MAC.

 @version 17.0
 @author Chris Hunter and Patrick Murphy
*/

void upButton();
void middleButton();
void rightButton();
void leftButton();
int phyRx_goodHeader_callback(Macframe* packet);
void phyRx_badHeader_callback();
void dataFromNetworkLayer_callback(Xuint32 length, char* payload);
void timer_callback(unsigned char timerType);
void uartRecv_callback(unsigned char uartByte);
