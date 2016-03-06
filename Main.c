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
unsigned char card_store[15],sms[20],RiseArray[5],SugarArray[4],KeroseneArray[4];
bit rfid_flag=0,sms_indication=0;
#define VOLUE RC4
#define STOCK RC3
unsigned char User1[]={"1C0082CE6939"};
unsigned char User2[]={"1B003C5BFC80"};
unsigned char User3[]={"1B003C5BFC81"};
__EEPROM_DATA(10,0,50,10,8,0,0,0);
__EEPROM_DATA(10,0,30,8,6,0,0,0);
__EEPROM_DATA(10,0,20,4,5,0,0,0);
__EEPROM_DATA(10,0,255,200,200,0,0,0);


void gsm_read_line2(char *buffer)
{
	unsigned char rec_data=0,flag=0;
	// Read the data until Line Feed character is received.
	do 
	{
		rec_data = receive();
		if(rec_data=='#'){flag=1;rec_data = receive(); }
		if(flag)
		{
			*buffer++ = rec_data;
		}
	}while (rec_data != '\n');	
	*buffer='\0';
}	


void interrupt ISR(void)
{	
	if (RCIF==1)
	{	sms_indication=0;
		gsm_read_line2(sms);
	}	
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
	User2amt=(eeprom_read(8)*100)+eeprom_read(9);
	User3amt=(eeprom_read(16)*100)+eeprom_read(17);
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

void LoadStockToArray()
{
	RiseArray[0] = digit[RiseStock/1000];
	RiseArray[1] = digit[RiseStock%1000/100];
	RiseArray[2] = digit[RiseStock%1000%100/10];
	RiseArray[3] = digit[RiseStock%1000%100%10];
	SugarArray[0] = digit[SugarStock/100];
	SugarArray[1] = digit[SugarStock%100/10];
	SugarArray[2] = digit[SugarStock%100%10];
	KeroseneArray[0] = digit[KeroseneStock/100];
	KeroseneArray[1] = digit[KeroseneStock%100/10];
	KeroseneArray[2] = digit[KeroseneStock%100%10];
}

void SendStock()
{
	unsigned char d;
	PIE1=0X00;
	usartstring("AT+CMGS=\"+919894748200\"");
	transmit(0x0D);
	while((d=receive())!='>');
	usartstring("Rise Stock:");//message
	usartstring(RiseArray);
	usartstring(" Kgs");
	transmit('\r');
	usartstring("Sugar Stock:");//message
	usartstring(SugarArray);
	usartstring(" Kgs");
	transmit('\r');
	usartstring("Kerosene Stock:");//message
	usartstring(KeroseneArray);
	usartstring(" Lts");
	transmit(0x1A);
	while((d=receive())!='K');
	PIE1=0X20;
}

void main()
{
	ANSEL=0x00;
	ANSELH=0x00;
	TRISD=0X01;
	PORTD=0X00;
	TRISC=0X8F;
	PORTC=0X00;
	INTCON=0xC0;
	uart_init();
	lcd_init();
	paramter();
	SoftWareUart_Init();
	startup();
//	gsm_init();
	PIE1=0x20;
//	lcdclear();
while(1)
{
	ReadStock();
	if(!RC0)
	{	
		lcdstring("PLEASE TAP YOUR  ");
		lcdcmd(0xC0);
		lcdstring("SMART CARD       ");
		__delay_ms(200);
		rfid_flag=0;
	}
	RFID_read();
	lcdcmd(0xD4);	
	lcdstring(sms);
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
			__delay_ms(2000);
			RiseStock=RiseStock-User1Rise;
			SugarStock=SugarStock-User1Sugar;
			KeroseneStock=KeroseneStock-User1Kerosene;
			eeprom_write(24,RiseStock/100);
			eeprom_write(25,RiseStock%100);
			eeprom_write(26,SugarStock);
			eeprom_write(27,KeroseneStock);
			User1amt = User1amt-50;
			//User1Rise = 0;
			//User1Sugar = 0;
			//User1Kerosene = 0;
			eeprom_write(0,User1amt/100);
			eeprom_write(1,User1amt%100);
			eeprom_write(2,User1Rise);
			eeprom_write(3,User1Sugar);
			eeprom_write(4,User1Kerosene);
			
			lcdcmd(0x01);
			lcdstring(" PLEASE KEEP YOUR");
			lcdcmd(0xC0);
			lcdstring(" CAN ON KEROSENE ");
			lcdcmd(0x94);
			lcdstring("      VOLUE      ");
			__delay_ms(200);
			VOLUE = 0;
			__delay_ms(5000);
			VOLUE = 1;
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
			__delay_ms(2000);
			RiseStock=RiseStock-User2Rise;
			SugarStock=SugarStock-User2Sugar;
			KeroseneStock=KeroseneStock-User2Kerosene;
			eeprom_write(24,RiseStock/100);
			eeprom_write(25,RiseStock%100);
			eeprom_write(26,SugarStock);
			eeprom_write(27,KeroseneStock);
			User2amt = User2amt-30;
			//User2Rise = 0;
			//User2Sugar = 0;
			//User2Kerosene = 0;
			eeprom_write(8,User2amt/100);
			eeprom_write(9,User2amt%100);
			eeprom_write(10,User2Rise);
			eeprom_write(11,User2Sugar);
			eeprom_write(12,User2Kerosene);

			lcdcmd(0x01);
			lcdstring(" PLEASE KEEP YOUR");
			lcdcmd(0xC0);
			lcdstring(" CAN ON KEROSENE ");
			lcdcmd(0x94);
			lcdstring("      VOLUE      ");
			__delay_ms(200);
			VOLUE = 0;
			__delay_ms(8000);
			VOLUE = 1;
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
			__delay_ms(2000);
			RiseStock=RiseStock-User3Rise;
			SugarStock=SugarStock-User3Sugar;
			KeroseneStock=KeroseneStock-User3Kerosene;
			eeprom_write(24,RiseStock/100);
			eeprom_write(25,RiseStock%100);
			eeprom_write(26,SugarStock);
			eeprom_write(27,KeroseneStock);
			User3amt = User3amt-20;
			//User3Rise = 0;
			//User3Sugar = 0;
			//User3Kerosene = 0;
			eeprom_write(16,User3amt/100);
			eeprom_write(17,User3amt%100);
			eeprom_write(18,User3Rise);
			eeprom_write(19,User3Sugar);
			eeprom_write(20,User3Kerosene);

			lcdcmd(0x01);
			lcdcmd(0x80);
			lcdstring(" PLEASE KEEP YOUR");
			lcdcmd(0xC0);
			lcdstring(" CAN ON KEROSENE ");
			lcdcmd(0x94);
			lcdstring("      VOLUE      ");
			__delay_ms(200);
			VOLUE = 0;
			__delay_ms(5000);
			VOLUE = 1;
			User=0;
			break;
		}
	}
	ReadStock();
	LoadStockToArray();
	if(RC1)
	DisplayStock();
		__delay_ms(500);
	
	if((memcmp("STOCK",&sms,5)==0))
	{
		if(!sms_indication)
		{
		//	SendStock();
			sms_indication=1;
		}
	}
	if(STOCK==1)
	{
		eeprom_write(24,10);
		eeprom_write(25,0);
		eeprom_write(26,255);
		eeprom_write(27,200);
		ReadStock();
		//LoadStockToArray();
		DisplayStock();
	}while(STOCK);


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

final_message_user1[0]=a[user1_rate/10000];
final_message_user1[1]=a[user1_rate%10000/1000];
final_message_user1[2]='.';
final_message_user1[3]=a[user1_rate%10000%1000/100];
final_message_user1[4]=a[user1_rate%10000%1000%100/10];
final_message_user1[5]=a[user1_rate%10000%1000%100%10];
final_message_user1[6]='\r';
final_message_user1[7]=a[user1_pulse/1000];
final_message_user1[8]=a[user1_pulse%1000/100];
final_message_user1[9]=a[user1_pulse%1000%100/10];
final_message_user1[10]=a[user1_pulse%1000%100%10];
final_message_user1[11]='\r';
final_message_user1[12]=a[user1_unit/1000];
final_message_user1[13]='.';
final_message_user1[14]=a[user1_unit%1000/100];
final_message_user1[15]=a[user1_unit%1000%100/10];
final_message_user1[16]=a[user1_unit%1000%100%10];
final_message_user1[17]='\r';


		} */
	