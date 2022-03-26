/**
 ******************************************************************************
 * @file           : main.c
 * @author         : Kunal Salvi
 * @brief          : Example File
 ******************************************************************************
 */

#include <stdint.h>
#include "main.h"
#include "Console/Console.h"
#include "GPIO/GPIO.h"
#include "SPI/SPI.h"
#include "W25QXX/W25QXX.h"



#define SPI_Flash_Debug 1


int main(void)
{
	MCU_Clock_Setup();
	Delay_Config();
#if SPI_Flash_Debug
	Console_Init(USART1, 9600);
#endif




W25Qx_Init(SPI1);

W25Qx_Chip_Erase();


uint8_t write[1000] = {0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a};
uint8_t flash[1000];


	for(;;)
	{

		W25Qx_Write_Flash_Buffer(0x000000, 10, write);
		Delay_ms(20);
		W25Qx_Read_Flash_Buffer(0x000000, 10, flash);
		Delay_ms(100);

	}
}




