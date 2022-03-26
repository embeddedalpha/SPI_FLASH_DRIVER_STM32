################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Inc/W25QXX/W25QXX.c 

OBJS += \
./Inc/W25QXX/W25QXX.o 

C_DEPS += \
./Inc/W25QXX/W25QXX.d 


# Each subdirectory must supply rules for building sources it contributes
Inc/W25QXX/%.o: ../Inc/W25QXX/%.c Inc/W25QXX/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F4 -DSTM32F411CEUx -c -I../Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Inc-2f-W25QXX

clean-Inc-2f-W25QXX:
	-$(RM) ./Inc/W25QXX/W25QXX.d ./Inc/W25QXX/W25QXX.o

.PHONY: clean-Inc-2f-W25QXX

