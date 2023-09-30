################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lvgl/src/extra/libs/qrcode/lv_qrcode.c \
../lvgl/src/extra/libs/qrcode/qrcodegen.c 

OBJS += \
./lvgl/src/extra/libs/qrcode/lv_qrcode.o \
./lvgl/src/extra/libs/qrcode/qrcodegen.o 

C_DEPS += \
./lvgl/src/extra/libs/qrcode/lv_qrcode.d \
./lvgl/src/extra/libs/qrcode/qrcodegen.d 


# Each subdirectory must supply rules for building sources it contributes
lvgl/src/extra/libs/qrcode/%.o lvgl/src/extra/libs/qrcode/%.su lvgl/src/extra/libs/qrcode/%.cyclo: ../lvgl/src/extra/libs/qrcode/%.c lvgl/src/extra/libs/qrcode/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32 -DSTM32F7 -DSTM32F746NGHx -DSTM32F746G_DISCO -DDEBUG -DSTM32F746xx -DUSE_HAL_DRIVER -c -I"C:/Users/louis/Desktop/2324_Projet2A_AresCFR/3A/ecran_code_2324" -I"C:/Users/louis/Desktop/2324_Projet2A_AresCFR/3A/ecran_code_2324/CMSIS/core" -I"C:/Users/louis/Desktop/2324_Projet2A_AresCFR/3A/ecran_code_2324/HAL_Driver/Inc" -I"C:/Users/louis/Desktop/2324_Projet2A_AresCFR/3A/ecran_code_2324/Utilities/STM32746G-Discovery" -I"C:/Users/louis/Desktop/2324_Projet2A_AresCFR/3A/ecran_code_2324/CMSIS/device" -I"C:/Users/louis/Desktop/2324_Projet2A_AresCFR/3A/ecran_code_2324/inc" -O3 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lvgl-2f-src-2f-extra-2f-libs-2f-qrcode

clean-lvgl-2f-src-2f-extra-2f-libs-2f-qrcode:
	-$(RM) ./lvgl/src/extra/libs/qrcode/lv_qrcode.cyclo ./lvgl/src/extra/libs/qrcode/lv_qrcode.d ./lvgl/src/extra/libs/qrcode/lv_qrcode.o ./lvgl/src/extra/libs/qrcode/lv_qrcode.su ./lvgl/src/extra/libs/qrcode/qrcodegen.cyclo ./lvgl/src/extra/libs/qrcode/qrcodegen.d ./lvgl/src/extra/libs/qrcode/qrcodegen.o ./lvgl/src/extra/libs/qrcode/qrcodegen.su

.PHONY: clean-lvgl-2f-src-2f-extra-2f-libs-2f-qrcode

