################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../L2_Drivers/src/adc.c \
../L2_Drivers/src/can.c \
../L2_Drivers/src/eint.c \
../L2_Drivers/src/lpc_rit.c \
../L2_Drivers/src/lpc_timers.c \
../L2_Drivers/src/rtc.c \
../L2_Drivers/src/spi_dma.c \
../L2_Drivers/src/spi_sem.c 

CPP_SRCS += \
../L2_Drivers/src/i2c2.cpp \
../L2_Drivers/src/lpc_pwm.cpp \
../L2_Drivers/src/nrf_stream.cpp \
../L2_Drivers/src/uart0.cpp \
../L2_Drivers/src/uart2.cpp \
../L2_Drivers/src/uart3.cpp 

OBJS += \
./L2_Drivers/src/adc.o \
./L2_Drivers/src/can.o \
./L2_Drivers/src/eint.o \
./L2_Drivers/src/i2c2.o \
./L2_Drivers/src/lpc_pwm.o \
./L2_Drivers/src/lpc_rit.o \
./L2_Drivers/src/lpc_timers.o \
./L2_Drivers/src/nrf_stream.o \
./L2_Drivers/src/rtc.o \
./L2_Drivers/src/spi_dma.o \
./L2_Drivers/src/spi_sem.o \
./L2_Drivers/src/uart0.o \
./L2_Drivers/src/uart2.o \
./L2_Drivers/src/uart3.o 

C_DEPS += \
./L2_Drivers/src/adc.d \
./L2_Drivers/src/can.d \
./L2_Drivers/src/eint.d \
./L2_Drivers/src/lpc_rit.d \
./L2_Drivers/src/lpc_timers.d \
./L2_Drivers/src/rtc.d \
./L2_Drivers/src/spi_dma.d \
./L2_Drivers/src/spi_sem.d 

CPP_DEPS += \
./L2_Drivers/src/i2c2.d \
./L2_Drivers/src/lpc_pwm.d \
./L2_Drivers/src/nrf_stream.d \
./L2_Drivers/src/uart0.d \
./L2_Drivers/src/uart2.d \
./L2_Drivers/src/uart3.d 


# Each subdirectory must supply rules for building sources it contributes
L2_Drivers/src/%.o: ../L2_Drivers/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -ffunction-sections -fdata-sections -Wall -Wshadow -Wlogical-op -Wfloat-equal -DBUILD_CFG_MPU=0 -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\newlib" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L0_LowLevel" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\include" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\portable\no_mpu" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L2_Drivers" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L2_Drivers\base" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L3_Utils" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L3_Utils\tlm" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO\fat" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO\wireless" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L5_Application" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L5_Application\c_code" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

L2_Drivers/src/%.o: ../L2_Drivers/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -ffunction-sections -fdata-sections -Wall -Wshadow -Wlogical-op -Wfloat-equal -DBUILD_CFG_MPU=0 -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\newlib" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L0_LowLevel" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\include" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\portable" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\portable\no_mpu" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L2_Drivers" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L2_Drivers\base" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L3_Utils" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L3_Utils\tlm" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO\fat" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO\wireless" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L5_Application" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L5_Application\c_code" -std=gnu++11 -fabi-version=0 -fno-exceptions -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


