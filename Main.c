#include<pic.h>
#include <math.h>
#include<htc.h>
#include<string.h>
#define _XTAL_FREQ 20000000
#include "Delay.c"
#include "lcd.c"
#include "softuart.c"
#include "UART.C"


__CONFIG(HS &			// External Crystal at High Speed
		 WDTDIS &		// Disable Watchdog Timer.
		 PWRTEN &		// Enable Power Up Timer.
		 BORDIS &		// Disable Brown Out Reset.
		 MCLREN &		// MCLR function is enabled
		 LVPDIS);		// Disable Low Voltage Programming.


unsigned int c1bal=999,c2bal=999,c1,c2,User=0,RiseStock=0,SugarStock=0,KeroseneStock=0;
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
unsigned char card_store[15];
bit rfid_flag=0;
unsigned char User1[]={"1C0082CE6939"};
unsigned char User2[]={"1B003C5BFC80"};
unsigned char User3[]={"1B003C5BFC81"};
__EEPROM_DATA(10,0,50,10,8,0,0,0);
__EEPROM_DATA(10,0,30,8,6,0,0,0);
__EEPROM_DATA(10,0,20,4,5,0,0,0);
__EEPROM_DATA(10,0,255,200,200,0,0,0);



void interrupt ISR(void)
{
}

void RFID_read()
{
	if(!rfid_flag)
	{
	for(int i=0;i<12;i++)
		{card_store[i]=softreceive();}
		rfid_flag=1;
	}
}
void DisplayAmnt(unsigned char Location, int Amnt)
{
	lcdcmd(Location);
	lcddata(digit[Amnt/1000]);
	lcddata(digit[Amnt%1000/100]);
	lcddata(digit[Amnt%1000%100/10]);
	lcddata(digit[Amnt%1000%100%10]);
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

void ReadStock()
{
	RiseStock=(eeprom_read(24)*100)+eeprom_read(25);
	SugarStock=eeprom_read(26);
	KeroseneStock=eeprom_read(27);
}

void DisplayStock()
{
			lcdcmd(0x80);
			lcdstring("    STOCK DETAILS   ");	
			lcdcmd(0xC0);
			lcdstring("RISE:      Kg       ");
			DisplayAmnt(0XC5,RiseStock);
			lcdcmd(0x94);
			lcdstring("SUGAR:    Kg         ");
			DisplayAmnt(0x9A,SugarStock);
			lcdcmd(0xD4);	
			lcdstring("KEROSENE:     Lts    ");
			DisplayAmnt(0XDD,KeroseneStock);
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
	__delay_ms(1000);
	lcdcmd(0x01);
	__delay_ms(500);
	lcdcmd(0x80);
	lcdstring("PLEASE TAP YOUR  ");
	lcdcmd(0xC0);
	lcdstring("SMART CARD       ");
	__delay_ms(1000);
}

void main()
{
	ANSEL=0x00;
	ANSELH=0x00;
	TRISD=0X01;
	PORTD=0X00;
	TRISC=0X0F;
	PORTC=0X00;
	uart_init();
	lcd_init();
	paramter();
	SoftWareUart_Init();
	startup();
//	gsm_init();
//	lcdclear();
while(1)
{
	if(!RC0)
	{	
		lcdstring("PLEASE TAP YOUR  ");
		lcdcmd(0xC0);
		lcdstring("SMART CARD       ");
		__delay_ms(200);
		rfid_flag=0;
	}
	RFID_read();
//	lcdcmd(0xD4);
//	lcdstring(card_store);
	if(strcmp(card_store,User1)==0)
		{
		  User=1;
		  card_store[0]=0;
		}
	else if(strcmp(card_store,User2)==0)
		{
			User=2;
			card_store[0]=0;
		}
	else if(strcmp(card_store,User3)==0)
		{
			User=3;
			card_store[0]=0;
		}

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
			User=0;
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
			User=0;
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
			User=0;
			break;
		}
/*		default:
		{
			
			lcdcmd(0x80);	
			lcdstring("USER NOT AUTHENTICAT");
			lcdcmd(0xC0);	
			lcdstring(" PLEASE CHECK YOUR  ");
			lcdcmd(0x94);	
			lcdstring("       CARD         ");
			lcdcmd(0xD4);	
			lcdstring("                    ");

		} */
	}
	ReadStock();
	if(RC1)
	DisplayStock();
	__delay_ms(500);
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