/* AISC110C Interface Tester 
  power on & configure sensor, view image data output
  test spi communication w/ sensor
*/

#include <SPI.h>
#include "aisc110c.h"

/* pin definitions */
const int EN = 32;
const int GPIO1 = 33;
const int GPIO2 = 25;
const int GPIO3 = 26;
const int GPIO4 = 27;

const int SPI_CLK = 14;
const int SPI_SS = 15;
const int SPI_MISO = 12;
const int SPI_MOSI = 13;


void setup() {

  /* spi initialization */
  pinMode(SPI_SS, OUTPUT);
  SPI.begin(SPI_CLK, SPI_MISO, SPI_MOSI, SPI_SS);



}

void loop() {
  // put your main code here, to run repeatedly:

}

void HandleSerial(void); // serial interface for config & start/stop