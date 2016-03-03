#define BAUDRATE 9600       //<--------
#define BITPERIOD ((1000000/BAUDRATE)-2)//dont change this
#define HALFBITPERIOD (BITPERIOD/2)//dont change this
#define Uart_Rx               RD0						// UART RX pin
#define Uart_Tx               RD1						// UART TX pin
#define Uart_Rx_Direction	  TRISD0					// UART RX pin direction register
#define Uart_Tx_Direction	  TRISD1

void SoftWareUart_Init()
{
  Uart_Tx=1;
  Uart_Rx=1;
  Uart_Tx_Direction=0;
  Uart_Rx_Direction=1;
  Uart_Tx=1;//ensure idel state for standard
  __delay_us(BITPERIOD);
}


unsigned char softreceive()
{
  char mask;
  char Data;
  Data=0;
  while(Uart_Rx);//replace by (!SoftWare_Uart_Rx) for inverted
  __delay_us(HALFBITPERIOD);
  for(mask=0x01;mask!=0;mask=mask<<1)
  {
    __delay_us(BITPERIOD);
    if(Uart_Rx)Data=Data|mask;//replace by (!SoftWare_Uart_Rx) for inverted
  }
  __delay_us(BITPERIOD);
  return Data;
}

void softtransmit(unsigned char Data)
{
  char mask;
  Uart_Tx = 0;//replace by one for inverted
  __delay_us(BITPERIOD);

  for (mask=0x01;mask!=0;mask=mask<<1)
  {
    if(Data&mask) Uart_Tx = 1;//replace by zero for inverted
    else Uart_Tx = 0;//replace by one for inverted
    __delay_us(BITPERIOD);
  }
  Uart_Tx = 1;//replace by zero for inverted
  __delay_us(BITPERIOD);
}

void softuart_string(const char *p)
{
while(*p){
softtransmit(*p++);
}
}