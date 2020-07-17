################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
..\Crypto\AES128.cpp \
..\Crypto\AES192.cpp \
..\Crypto\AES256.cpp \
..\Crypto\AESCommon.cpp \
..\Crypto\AESEsp32.cpp \
..\Crypto\AuthenticatedCipher.cpp \
..\Crypto\BLAKE2b.cpp \
..\Crypto\BLAKE2s.cpp \
..\Crypto\BigNumberUtil.cpp \
..\Crypto\BlockCipher.cpp \
..\Crypto\CTR.cpp \
..\Crypto\ChaCha.cpp \
..\Crypto\ChaChaPoly.cpp \
..\Crypto\Cipher.cpp \
..\Crypto\Crypto.cpp \
..\Crypto\Curve25519.cpp \
..\Crypto\EAX.cpp \
..\Crypto\Ed25519.cpp \
..\Crypto\GCM.cpp \
..\Crypto\GF128.cpp \
..\Crypto\GHASH.cpp \
..\Crypto\Hash.cpp \
..\Crypto\KeccakCore.cpp \
..\Crypto\NoiseSource.cpp \
..\Crypto\OMAC.cpp \
..\Crypto\P521.cpp \
..\Crypto\Poly1305.cpp \
..\Crypto\RNG.cpp \
..\Crypto\SHA256.cpp \
..\Crypto\SHA3.cpp \
..\Crypto\SHA512.cpp \
..\Crypto\SHAKE.cpp \
..\Crypto\XOF.cpp \
..\Crypto\XTS.cpp 

LINK_OBJ += \
.\Crypto\AES128.cpp.o \
.\Crypto\AES192.cpp.o \
.\Crypto\AES256.cpp.o \
.\Crypto\AESCommon.cpp.o \
.\Crypto\AESEsp32.cpp.o \
.\Crypto\AuthenticatedCipher.cpp.o \
.\Crypto\BLAKE2b.cpp.o \
.\Crypto\BLAKE2s.cpp.o \
.\Crypto\BigNumberUtil.cpp.o \
.\Crypto\BlockCipher.cpp.o \
.\Crypto\CTR.cpp.o \
.\Crypto\ChaCha.cpp.o \
.\Crypto\ChaChaPoly.cpp.o \
.\Crypto\Cipher.cpp.o \
.\Crypto\Crypto.cpp.o \
.\Crypto\Curve25519.cpp.o \
.\Crypto\EAX.cpp.o \
.\Crypto\Ed25519.cpp.o \
.\Crypto\GCM.cpp.o \
.\Crypto\GF128.cpp.o \
.\Crypto\GHASH.cpp.o \
.\Crypto\Hash.cpp.o \
.\Crypto\KeccakCore.cpp.o \
.\Crypto\NoiseSource.cpp.o \
.\Crypto\OMAC.cpp.o \
.\Crypto\P521.cpp.o \
.\Crypto\Poly1305.cpp.o \
.\Crypto\RNG.cpp.o \
.\Crypto\SHA256.cpp.o \
.\Crypto\SHA3.cpp.o \
.\Crypto\SHA512.cpp.o \
.\Crypto\SHAKE.cpp.o \
.\Crypto\XOF.cpp.o \
.\Crypto\XTS.cpp.o 

CPP_DEPS += \
.\Crypto\AES128.cpp.d \
.\Crypto\AES192.cpp.d \
.\Crypto\AES256.cpp.d \
.\Crypto\AESCommon.cpp.d \
.\Crypto\AESEsp32.cpp.d \
.\Crypto\AuthenticatedCipher.cpp.d \
.\Crypto\BLAKE2b.cpp.d \
.\Crypto\BLAKE2s.cpp.d \
.\Crypto\BigNumberUtil.cpp.d \
.\Crypto\BlockCipher.cpp.d \
.\Crypto\CTR.cpp.d \
.\Crypto\ChaCha.cpp.d \
.\Crypto\ChaChaPoly.cpp.d \
.\Crypto\Cipher.cpp.d \
.\Crypto\Crypto.cpp.d \
.\Crypto\Curve25519.cpp.d \
.\Crypto\EAX.cpp.d \
.\Crypto\Ed25519.cpp.d \
.\Crypto\GCM.cpp.d \
.\Crypto\GF128.cpp.d \
.\Crypto\GHASH.cpp.d \
.\Crypto\Hash.cpp.d \
.\Crypto\KeccakCore.cpp.d \
.\Crypto\NoiseSource.cpp.d \
.\Crypto\OMAC.cpp.d \
.\Crypto\P521.cpp.d \
.\Crypto\Poly1305.cpp.d \
.\Crypto\RNG.cpp.d \
.\Crypto\SHA256.cpp.d \
.\Crypto\SHA3.cpp.d \
.\Crypto\SHA512.cpp.d \
.\Crypto\SHAKE.cpp.d \
.\Crypto\XOF.cpp.d \
.\Crypto\XTS.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
Crypto\AES128.cpp.o: D:\ArduinoAssignment\Crypto\AES128.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\AES192.cpp.o: D:\ArduinoAssignment\Crypto\AES192.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\AES256.cpp.o: D:\ArduinoAssignment\Crypto\AES256.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\AESCommon.cpp.o: D:\ArduinoAssignment\Crypto\AESCommon.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\AESEsp32.cpp.o: D:\ArduinoAssignment\Crypto\AESEsp32.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\AuthenticatedCipher.cpp.o: D:\ArduinoAssignment\Crypto\AuthenticatedCipher.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\BLAKE2b.cpp.o: D:\ArduinoAssignment\Crypto\BLAKE2b.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\BLAKE2s.cpp.o: D:\ArduinoAssignment\Crypto\BLAKE2s.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\BigNumberUtil.cpp.o: D:\ArduinoAssignment\Crypto\BigNumberUtil.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\BlockCipher.cpp.o: D:\ArduinoAssignment\Crypto\BlockCipher.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\CTR.cpp.o: D:\ArduinoAssignment\Crypto\CTR.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\ChaCha.cpp.o: D:\ArduinoAssignment\Crypto\ChaCha.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\ChaChaPoly.cpp.o: D:\ArduinoAssignment\Crypto\ChaChaPoly.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\Cipher.cpp.o: D:\ArduinoAssignment\Crypto\Cipher.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\Crypto.cpp.o: D:\ArduinoAssignment\Crypto\Crypto.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\Curve25519.cpp.o: D:\ArduinoAssignment\Crypto\Curve25519.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\EAX.cpp.o: D:\ArduinoAssignment\Crypto\EAX.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\Ed25519.cpp.o: D:\ArduinoAssignment\Crypto\Ed25519.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\GCM.cpp.o: D:\ArduinoAssignment\Crypto\GCM.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\GF128.cpp.o: D:\ArduinoAssignment\Crypto\GF128.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\GHASH.cpp.o: D:\ArduinoAssignment\Crypto\GHASH.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\Hash.cpp.o: D:\ArduinoAssignment\Crypto\Hash.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\KeccakCore.cpp.o: D:\ArduinoAssignment\Crypto\KeccakCore.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\NoiseSource.cpp.o: D:\ArduinoAssignment\Crypto\NoiseSource.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\OMAC.cpp.o: D:\ArduinoAssignment\Crypto\OMAC.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\P521.cpp.o: D:\ArduinoAssignment\Crypto\P521.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\Poly1305.cpp.o: D:\ArduinoAssignment\Crypto\Poly1305.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\RNG.cpp.o: D:\ArduinoAssignment\Crypto\RNG.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\SHA256.cpp.o: D:\ArduinoAssignment\Crypto\SHA256.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\SHA3.cpp.o: D:\ArduinoAssignment\Crypto\SHA3.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\SHA512.cpp.o: D:\ArduinoAssignment\Crypto\SHA512.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\SHAKE.cpp.o: D:\ArduinoAssignment\Crypto\SHAKE.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\XOF.cpp.o: D:\ArduinoAssignment\Crypto\XOF.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '

Crypto\XTS.cpp.o: D:\ArduinoAssignment\Crypto\XTS.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\arduinoPlugin\packages\arduino\tools\avr-gcc\7.3.0-atmel3.6.1-arduino7/bin/avr-g++" -c -g -Os -Wall -Wextra -std=gnu++11 -fpermissive -fno-exceptions -ffunction-sections -fdata-sections -fno-threadsafe-statics -Wno-error=narrowing -MMD -flto -mmcu=atmega328p -DF_CPU=16000000L -DARDUINO=10812 -DARDUINO_AVR_UNO -DARDUINO_ARCH_AVR     -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\cores\arduino" -I"C:\eclipse\arduinoPlugin\packages\arduino\hardware\avr\1.8.3\variants\standard" -I"D:\ArduinoAssignment\Crypto\utility" -I"D:\ArduinoAssignment\Crypto" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"   -o "$@"
	@echo 'Finished building: $<'
	@echo ' '


