#include<pic.h>
#include<htc.h>
#define _XTAL_FREQ 20000000
__CONFIG(HS &			// External Crystal at High Speed
		 WDTDIS &		// Disable Watchdog Timer.
		 PWRTEN &		// Enable Power Up Timer.
		 BORDIS &		// Disable Brown Out Reset.
		 MCLREN &		// MCLR function is enabled
		 LVPDIS);		// Disable Low Voltage Programming.

#include "lcd.c"
void main()
{
PORTD=0x00;
TRISD=0x00;
lcd_init();
lcdcmd(0x80);
lcdstring("LCD 4BIT MODE");
lcdcmd(0xC0);
lcdstring("TESTING......");
__delay_ms(1000);
lcdclear();
while(1){
lcdcmd(0x80);
lcdstring("LINE 1 TEST");
lcdcmd(0xC0);
lcdstring("LINE 2 TEST");
lcdcmd(0x94);
lcdstring("LINE 3 TEST");
lcdcmd(0xD4);
lcdstring("LINE 4 TEST");
Lcd_Shift_Right();
__delay_ms(5);
}

}
