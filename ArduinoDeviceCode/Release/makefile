################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ..\makefile.init

RM := -del 

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include core\core\subdir.mk
-include Crypto\examples\TestXTS\subdir.mk
-include Crypto\examples\TestSHAKE256\subdir.mk
-include Crypto\examples\TestSHAKE128\subdir.mk
-include Crypto\examples\TestSHA512\subdir.mk
-include Crypto\examples\TestSHA3_512\subdir.mk
-include Crypto\examples\TestSHA3_256\subdir.mk
-include Crypto\examples\TestSHA256\subdir.mk
-include Crypto\examples\TestRNG\subdir.mk
-include Crypto\examples\TestPoly1305\subdir.mk
-include Crypto\examples\TestP521Math\subdir.mk
-include Crypto\examples\TestP521\subdir.mk
-include Crypto\examples\TestGHASH\subdir.mk
-include Crypto\examples\TestGCM\subdir.mk
-include Crypto\examples\TestEd25519\subdir.mk
-include Crypto\examples\TestEAX\subdir.mk
-include Crypto\examples\TestCurve25519Math\subdir.mk
-include Crypto\examples\TestCurve25519\subdir.mk
-include Crypto\examples\TestChaChaPoly\subdir.mk
-include Crypto\examples\TestChaCha\subdir.mk
-include Crypto\examples\TestCTR\subdir.mk
-include Crypto\examples\TestBigNumberUtil\subdir.mk
-include Crypto\examples\TestBLAKE2s\subdir.mk
-include Crypto\examples\TestBLAKE2b\subdir.mk
-include Crypto\examples\TestAESTiny\subdir.mk
-include Crypto\examples\TestAESSmall\subdir.mk
-include Crypto\examples\TestAES\subdir.mk
-include Crypto\subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ..\makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
AR += \
D:\ArduinoAssignment\Release\arduino.ar \

ELF += \
ArduinoAssignment.elf \

HEX += \
ArduinoAssignment.hex \


# All Target
all: ArduinoAssignment

# Tool invocations
ArduinoAssignment: $(HEX)
	@echo 'Building target: $@'
	@echo 'Printing size:'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-size" -A "D:\ArduinoAssignment\Release/ArduinoAssignment.elf"
	@echo 'Finished building target: $@'
	@echo ' '

D:\ArduinoAssignment\Release\arduino.ar: $(AR_OBJ)
	@echo 'Starting archiver'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-gcc-ar" rcs     D:\ArduinoAssignment\Release/arduino.ar $(AR_OBJ)
	@echo 'Finished building: $@'
	@echo ' '

ArduinoAssignment.elf: $(LINK_OBJ) $(AR)
	@echo 'Starting combiner'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-gcc" -Wall -Wextra -Os -g -flto -fuse-linker-plugin -Wl,--gc-sections -mmcu=atmega328p   -o "D:\ArduinoAssignment\Release/ArduinoAssignment.elf"   $(LINK_OBJ)    D:\ArduinoAssignment\Release/arduino.ar  "-LD:\ArduinoAssignment\Release" -lm
	@echo 'Finished building: $@'
	@echo ' '

ArduinoAssignment.hex: $(ELF)
	@echo 'Do all objcopy commands'
	${A.RECIPE.OBJCOPY.EEP.PATTERN}
	${A.RECIPE.OBJCOPY.HEX.PATTERN}
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(C_UPPER_DEPS)$(PDE_DEPS)$(C_DEPS)$(AR)$(CC_DEPS)$(AR_OBJ)$(C++_DEPS)$(LINK_OBJ)$(CXX_DEPS)$(ASM_DEPS)$(HEX)$(INO_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(ELF)$(CPP_DEPS)
	-@echo ' '

.PHONY: all clean dependents

-include ..\makefile.targets
