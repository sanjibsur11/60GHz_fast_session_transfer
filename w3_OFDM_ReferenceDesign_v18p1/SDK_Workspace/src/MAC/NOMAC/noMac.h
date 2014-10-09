/*! \file noMac.h
 \brief No Medium Access Control Workshop MAC.

 @version 17.0
 @author Chris Hunter & Patrick Murphy

*/


int phyRx_goodHeader_callback(Macframe* packet);
void phyRx_badHeader_callback();
void dataFromNetworkLayer_callback(Xuint32 length, char* payload);
void rightButton();
void upButton();
int main();
