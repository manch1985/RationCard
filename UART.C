unsigned char receive()
{
if(OERR){CREN=0;CREN=1;}
	while(!RCIF);
	return(RCREG);
}
void transmit(unsigned char data)
{
while(!TXIF);
TXREG =data;		//transmitting the data through TX buffer
}	
void UARTinit()
{
TXSTA = 0x24;				//configure the TX for 8-bit width						
RCSTA = 0x90;				//configure the RX for 8-bit width			
SPBRG = 129; 				//9600 baud rate for 20MHZ 
INTCON = 0xC0; 				//configure the Global & peripheral interrupts
RCREG = 0;								
}	

void usartstring(const unsigned char *st)
{
while(*st)
transmit(*st++);
}


void gsm_init()
{
unsigned char d;
lcdcmd(0X80);
lcdstring("GSM INITIALIZING");
lcdcmd(0XC0);
lcdstring("PLS WAIT........");
DelayS(5);
lcdcmd(0x01);

usartstring("AT\r");
transmit(0x0D);
while((d=receive())!='K');

usartstring("AT+CPIN?\r");
transmit(0x0D);
while((d=receive())!='K');

usartstring("AT+CSDH=1\r");
transmit(0x0D);
while((d=receive())!='K');

usartstring("AT+CMGF=1\r");
transmit(0x0D);
while((d=receive())!='K');

usartstring("AT+CNMI=2,2,0,0,0\r");
transmit(0x0D);
while((d=receive())!='K');
lcdcmd(0x80);
lcdstring("GSM READY");
DelayS(10);
lcdcmd(0x01);
}

void send_moister_message2()
{
unsigned char d;
usartstring("AT+CMGS=\"+919790080510\"");
transmit(0x0D);
while((d=receive())!='>');
usartstring("moister level low moter ON");//message
transmit(0x1A);
while((d=receive())!='K');
}
void send_moister_message1()
{
unsigned char d;
usartstring("AT+CMGS=\"+919790080510\"");
transmit(0x0D);
while((d=receive())!='>');
usartstring("moister level high moter OFF");//message
transmit(0x1A);
while((d=receive())!='K');
}
void send_stage1_message()
{
unsigned char d;
usartstring("AT+CMGS=\"+919790080510\"");
transmit(0x0D);
while((d=receive())!='>');
usartstring("Crop crossed stage1");//message
transmit(0x1A);
while((d=receive())!='K');
}
void send_stage2_message()
{
unsigned char d;
usartstring("AT+CMGS=\"+919790080510\"");
transmit(0x0D);
while((d=receive())!='>');
usartstring("Crop crossed stage2");//message
transmit(0x1A);
while((d=receive())!='K');
}
void send_stage3_message()
{
unsigned char d;
usartstring("AT+CMGS=\"+919790080510\"");
transmit(0x0D);
while((d=receive())!='>');
usartstring("Crop crossed stage3");//message
transmit(0x1A);
while((d=receive())!='K');
}


