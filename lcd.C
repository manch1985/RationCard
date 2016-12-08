const char a[]={"0123456789"};
#define RS RD2
#define EN RD3
#define D4 RD4
#define D5 RD5
#define D6 RD6
#define D7 RD7
enable()
{
EN  = 1;             // => E = 1
__delay_ms(4);
EN  = 0;             // => E = 0
}

void lcdport(char a)
{
	if(a & 1)
		D4 = 1;
	else
		D4 = 0;

	if(a & 2)
		D5 = 1;
	else
		D5 = 0;

	if(a & 4)
		D6 = 1;
	else
		D6 = 0;

	if(a & 8)
		D7 = 1;
	else
		D7 = 0;
}

void lcdcmd(char a)
{
unsigned char y,z;
z=a>>4&0x0F;
y=a&0x0F;
             // => RS = 0
lcdport(z);
enable();
lcdport(y);
enable();
}

void lcddata(char a)
{
unsigned char y,z;
z=a>>4&0x0F;
y=a&0x0F;
RS=1;             // => RS = 0
lcdport(z);
enable();
lcdport(y);
enable();
RS = 0;
}

void lcdclear()
{
lcdcmd(0);
lcdcmd(1);
}


void lcd_init()
{
lcdport(0x00);
__delay_ms(20);
lcdcmd(0x03);
__delay_ms(5);
lcdcmd(0x03);
__delay_ms(11);
lcdcmd(0x03);
/////////////////////////////////////////////////////
lcdcmd(0x02);
lcdcmd(0x02);
lcdcmd(0x28);
lcdcmd(0x00);
lcdcmd(0x0C);
lcdcmd(0x00);
lcdcmd(0x06);
}

void lcdstring(const char *a)
{
while(*a)
{
lcddata(*a++);
}
}

void Lcd_Shift_Right()
{
lcdcmd(0x1C);
}

void Lcd_Shift_Left()
{
lcdcmd(0x18);
}

