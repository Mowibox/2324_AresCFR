################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/Components/ov9655/ov9655.c 

OBJS += \
./Utilities/Components/ov9655/ov9655.o 

C_DEPS += \
./Utilities/Components/ov9655/ov9655.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/Components/ov9655/%.o Utilities/Components/ov9655/%.su Utilities/Components/ov9655/%.cyclo: ../Utilities/Components/ov9655/%.c Utilities/Components/ov9655/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DSTM32 -DSTM32F7 -DSTM32F746NGHx -DSTM32F746G_DISCO -DDEBUG -DSTM32F746xx -DUSE_HAL_DRIVER -c -I"C:/Workspace/Git_folders/2324_Projet2A_AresCFR/3A/ecran_code_2324" -I"C:/Workspace/Git_folders/2324_Projet2A_AresCFR/3A/ecran_code_2324/CMSIS/core" -I"C:/Workspace/Git_folders/2324_Projet2A_AresCFR/3A/ecran_code_2324/HAL_Driver/Inc" -I"C:/Workspace/Git_folders/2324_Projet2A_AresCFR/3A/ecran_code_2324/Utilities/STM32746G-Discovery" -I"C:/Workspace/Git_folders/2324_Projet2A_AresCFR/3A/ecran_code_2324/CMSIS/device" -I"C:/Workspace/Git_folders/2324_Projet2A_AresCFR/3A/ecran_code_2324/inc" -O3 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Utilities-2f-Components-2f-ov9655

clean-Utilities-2f-Components-2f-ov9655:
	-$(RM) ./Utilities/Components/ov9655/ov9655.cyclo ./Utilities/Components/ov9655/ov9655.d ./Utilities/Components/ov9655/ov9655.o ./Utilities/Components/ov9655/ov9655.su

.PHONY: clean-Utilities-2f-Components-2f-ov9655

