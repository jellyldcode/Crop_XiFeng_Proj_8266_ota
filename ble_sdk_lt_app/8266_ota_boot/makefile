################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include vendor/common/subdir.mk
-include vendor/826x_ota_boot/subdir.mk
-include proj/mcu_spec/subdir.mk
-include proj/mcu/subdir.mk
-include proj/drivers/subdir.mk
-include proj/common/subdir.mk
-include proj/app/subdir.mk
-include objects.mk

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LST += \
8266_ota_boot.lst \

FLASH_IMAGE += \
8266_ota_boot.bin \

SIZEDUMMY += \
sizedummy \


# All Target
all: pre-build main-build

# Main-build Target
main-build: ble_sdk_lt_app.elf secondary-outputs

# Tool invocations
ble_sdk_lt_app.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: TC32 C Linker'
	tc32-elf-ld --gc-sections -L"D:\01_DevProj\08_Crop_XiFeng\05_Proj_8266_ota\01_Code\Debug\ble_sdk_lt_app\proj_lib" -T ../boot.link -o"ble_sdk_lt_app.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

8266_ota_boot.lst: ble_sdk_lt_app.elf
	@echo 'Invoking: TC32 Create Extended Listing'
	tc32-elf-objdump -x -D -l -S ble_sdk_lt_app.elf  >"8266_ota_boot.lst"
	@echo 'Finished building: $@'
	@echo ' '

8266_ota_boot.bin: ble_sdk_lt_app.elf
	@echo 'Create Flash image (binary format)'
	tc32-elf-objcopy -O binary ble_sdk_lt_app.elf  "8266_ota_boot.bin"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: ble_sdk_lt_app.elf
	@echo 'Invoking: Print Size'
	tc32-elf-size -t ble_sdk_lt_app.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(LST)$(SIZEDUMMY) ble_sdk_lt_app.elf
	-@echo ' '

pre-build:
	-"D:\01_DevProj\08_Crop_XiFeng\05_Proj_8266_ota\01_Code\Debug\ble_sdk_lt_app/getver.sh"
	-@echo ' '

secondary-outputs: $(LST) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

-include ../makefile.targets
