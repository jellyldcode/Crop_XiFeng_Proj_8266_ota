################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../vendor/826x_ota_boot/main.c 

OBJS += \
./vendor/826x_ota_boot/main.o 


# Each subdirectory must supply rules for building sources it contributes
vendor/826x_ota_boot/%.o: ../vendor/826x_ota_boot/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TC32 Compiler'
	tc32-elf-gcc -ffunction-sections -fdata-sections -I../proj/mcu -I../proj/mcu_spec -D__PROJECT_8266_OTA_BOOT__=1 -Wall -O2 -fpack-struct -fshort-enums -finline-small-functions -std=gnu99 -fshort-wchar -fms-extensions -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


