#include<pic.h>
#include <math.h>
#include<htc.h>
#include<string.h>
#include "Delay.c"

#define _XTAL_FREQ 20000000
__CONFIG(HS &			// External Crystal at High Speed
		 WDTDIS &		// Disable Watchdog Timer.
		 PWRTEN &		// Enable Power Up Timer.
		 BORDIS &		// Disable Brown Out Reset.
		 MCLREN &		// MCLR function is enabled
		 LVPDIS);		// Disable Low Voltage Programming.

#include "lcd.c"

unsigned int c1bal=999,c2bal=999,c1,c2,User=0;
char j,i,k[15];
unsigned char User1Rise=0,
			  User2Rise=0,
			  User3Rise=0,
			  User1Kerosene=0,
			  User2Kerosene=0,
			  User3Kerosene=0,
			  User1Sugar=0,
			  User2Sugar=0,
			  User3Sugar=0;
int User1amt=0,User2amt=0,User3amt=0;
const char digit[]={"0123456789"};
unsigned char card1[]={"1C0082CE6939"};
unsigned char card2[]={"1B003C5BFC80"};
__EEPROM_DATA(10,0,50,10,8,0,0,0);
__EEPROM_DATA(10,0,30,8,6,0,0,0);
__EEPROM_DATA(10,0,20,4,5,0,0,0);

void interrupt ISR(void)
{
}

void ReadAmnt()
{
	User1amt=(eeprom_read(0)*100)+eeprom_read(1);
	User2amt=(eeprom_read(8)*100)+eeprom_read(15);
	User3amt=(eeprom_read(16)*100)+eeprom_read(23);
	User1Rise = eeprom_read(2);
	User2Rise = eeprom_read(10);
	User3Rise = eeprom_read(18);
	User1Kerosene = eeprom_read(4);
	User2Kerosene = eeprom_read(12);
	User3Kerosene = eeprom_read(20);
	User1Sugar = eeprom_read(3);
	User2Sugar = eeprom_read(11);
	User3Sugar = eeprom_read(19);
}
void DisplayAmnt(unsigned char Location, int Amnt)
{
	lcdcmd(Location);
	lcddata(digit[Amnt/1000]);
	lcddata(digit[Amnt%1000/100]);
	lcddata(digit[Amnt%1000%100/10]);
	lcddata(digit[Amnt%1000%100%10]);
}
void DisplaySugar(unsigned char Location, unsigned char Sugar)
{
	lcdcmd(Location);
	lcddata(digit[Sugar/10]);
	lcddata(digit[Sugar%10]);
}
void DisplayRise(unsigned char Location, unsigned char Rise)
{
	lcdcmd(Location);
	lcddata(digit[Rise/10]);
	lcddata(digit[Rise%10]);
}
void DisplayKerosene(unsigned char Location, unsigned char Kerosene)
{
	lcdcmd(Location);
	lcddata(digit[Kerosene/10]);
	lcddata(digit[Kerosene%10]);
}
unsigned char receive()
{
while(!RCIF);
return(RCREG);
}
void transmit(unsigned char data)
{
while(!TXIF);
TXREG=data;//transmitting the data through TX buffer
}


void usartstring(const unsigned char *st)
{
while(*st)
transmit(*st++);
}

void uart_init()
{
PORTC=0xFF;
TRISC=0x80;
TXSTA=0X24;			
RCSTA=0X90;			
SPBRG=129;		
RCREG=0;
}
void paramter()
{
c1=(eeprom_read(0)*100)+eeprom_read(1);
c2=(eeprom_read(2)*100)+eeprom_read(3);
}
void startup()
{
	lcdcmd(0x80);
	lcdstring("AUTOMATIC RATION ");
	lcdcmd(0xC0);
	lcdstring("   CARD SYSTEM   ");
	__delay_ms(5000);
	lcdcmd(0x01);
	__delay_ms(500);
	lcdcmd(0x80);
	lcdstring("PLEASE TAP YOUR  ");
	lcdcmd(0xC0);
	lcdstring("SMART CARD       ");
}

void main()
{
ANSEL=0x00;
ANSELH=0x00;
TRISD=0X00;
PORTD=0X00;
TRISC=0X0F;
PORTC=0X00;
uart_init();
lcd_init();
paramter();
startup();
lcdclear();
while(1)
{

	if(RC0)
	User=1;
	if(RC1)
	User=2;
	if(RC2)
	User=3;
	if(RC3)
	User=4;
	switch(User)
	{
		case 1:
		{
			ReadAmnt();
			lcdcmd(0x80);
			lcdstring("USER1 AMOUNT:       ");	
			DisplayAmnt(0X8D,User1amt);
			lcdcmd(0xC0);
			lcdstring("RISE:   Kg          ");
			DisplayRise(0XC5,User1Rise);
			lcdcmd(0x94);
			lcdstring("SUGAR:   Kg         ");
			DisplaySugar(0x9A,User1Sugar);
			lcdcmd(0xD4);	
			lcdstring("KEROSENE:   Lts     ");
			DisplayKerosene(0XDD,User1Kerosene);
			break;
		}
		case 2:
		{
			ReadAmnt();
			lcdcmd(0x80);
			lcdstring("USER2 AMOUNT:       ");	
			DisplayAmnt(0X8D,User2amt);
			lcdcmd(0xC0);
			lcdstring("RISE:   Kg          ");
			DisplayRise(0XC5,User2Rise);
			lcdcmd(0x94);
			lcdstring("SUGAR:   Kg         ");
			DisplaySugar(0x9A,User2Sugar);
			lcdcmd(0xD4);	
			lcdstring("KEROSENE:   Lts     ");
			DisplayKerosene(0XDD,User2Kerosene);
			break;
		}
		case 3:
		{
			ReadAmnt();
			lcdcmd(0x80);
			lcdstring("USER3 AMOUNT:       ");	
			DisplayAmnt(0X8D,User3amt);
			lcdcmd(0xC0);
			lcdstring("RISE:   Kg          ");
			DisplayRise(0XC5,User3Rise);
			lcdcmd(0x94);
			lcdstring("SUGAR:   Kg         ");
			DisplaySugar(0x9A,User3Sugar);
			lcdcmd(0xD4);	
			lcdstring("KEROSENE:   Lts     ");
			DisplayKerosene(0XDD,User3Kerosene);
			break;
		}
		default:
		{
			
			lcdcmd(0x80);	
			lcdstring("USER NOT AUTHENTICAT");
			lcdcmd(0xC0);	
			lcdstring(" PLEASE CHECK YOUR  ");
			lcdcmd(0x94);	
			lcdstring("       CARD         ");
			lcdcmd(0xD4);	
			lcdstring("                    ");

		}
	}
}
}
/*RD3=1;
	GIE=1;
	PEIE=1;
	RCIE=1;
	if(strcmp(k,card1)==0)
	{
		lcdcmd(0x80);
		lcdstring("    SUSILA      ");
		lcdcmd(0xC0);
		lcdstring("                ");
		if(!i)
		{
			c1=c1-50;
		if(c1<=0){c1=999;}
			eeprom_write(0,c1/100);
			eeprom_write(1,c1%100);
			lcdcmd(0xC0);
			lcdstring("BAL:");
			lcddata(digit[c1/100]);
			lcddata(digit[c1%100/10]);
			lcddata(digit[c1%100%10]);
__delay_ms(3000);
			lcdcmd(0xC0);
			lcdstring("            ");
__delay_ms(1000);
			i=1;
			k[0]='0';
		}
	}
if(strcmp(k,card2)==0)
{
	lcdcmd(0x80);
	lcdstring("CHANDRA MOHAN   ");
	lcdcmd(0xC0);
	lcdstring("                ");
	if(!i)
	{
		c2=c2-50;
		if(c2<=0){c1=999;}
		eeprom_write(3,c2/100);
		eeprom_write(4,c2%100);
		lcdcmd(0xC0);
		lcdstring("BAL:");
		lcddata(digit[c2/100]);
		lcddata(digit[c2%100/10]);
		lcddata(digit[c2%100%10]);
__delay_ms(3000);
lcdcmd(0xC0);
		lcdstring("            ");
__delay_ms(1000);
		i=1;k[0]='0';
	}
}
}
}
*/	