################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../L3_Utils/src/c_list.c \
../L3_Utils/src/file_logger.c \
../L3_Utils/src/printf_lib.c \
../L3_Utils/src/rtc_alarm.c \
../L3_Utils/src/utilities.c 

CPP_SRCS += \
../L3_Utils/src/command_handler.cpp \
../L3_Utils/src/freertos_timer.cpp \
../L3_Utils/src/scheduler_task.cpp \
../L3_Utils/src/str.cpp 

OBJS += \
./L3_Utils/src/c_list.o \
./L3_Utils/src/command_handler.o \
./L3_Utils/src/file_logger.o \
./L3_Utils/src/freertos_timer.o \
./L3_Utils/src/printf_lib.o \
./L3_Utils/src/rtc_alarm.o \
./L3_Utils/src/scheduler_task.o \
./L3_Utils/src/str.o \
./L3_Utils/src/utilities.o 

C_DEPS += \
./L3_Utils/src/c_list.d \
./L3_Utils/src/file_logger.d \
./L3_Utils/src/printf_lib.d \
./L3_Utils/src/rtc_alarm.d \
./L3_Utils/src/utilities.d 

CPP_DEPS += \
./L3_Utils/src/command_handler.d \
./L3_Utils/src/freertos_timer.d \
./L3_Utils/src/scheduler_task.d \
./L3_Utils/src/str.d 


# Each subdirectory must supply rules for building sources it contributes
L3_Utils/src/%.o: ../L3_Utils/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -ffunction-sections -fdata-sections -Wall -Wshadow -Wlogical-op -Wfloat-equal -DBUILD_CFG_MPU=0 -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\newlib" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L0_LowLevel" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\include" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\portable\no_mpu" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L2_Drivers" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L2_Drivers\base" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L3_Utils" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L3_Utils\tlm" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO\fat" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO\wireless" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L5_Application" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L5_Application\c_code" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

L3_Utils/src/%.o: ../L3_Utils/src/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -Os -fmessage-length=0 -ffunction-sections -fdata-sections -Wall -Wshadow -Wlogical-op -Wfloat-equal -DBUILD_CFG_MPU=0 -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\newlib" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L0_LowLevel" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\include" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\portable" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L1_FreeRTOS\portable\no_mpu" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L2_Drivers" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L2_Drivers\base" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L3_Utils" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L3_Utils\tlm" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO\fat" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L4_IO\wireless" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L5_Application" -I"C:\Users\Aakash\Downloads\CMPE243\SJSU_Dev_hyperload2\SJSU_Dev\projects\lpc1758_freertos_lidar\L5_Application\c_code" -std=gnu++11 -fabi-version=0 -fno-exceptions -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


