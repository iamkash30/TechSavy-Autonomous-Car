/*
 *     SocialLedge.com - Copyright (C) 2013
 *
 *     This file is part of free software framework for embedded processors.
 *     You can use it and/or distribute it as long as this copyright header
 *     remains unmodified.  The code is free for personal use and requires
 *     permission to use in a commercial product.
 *
 *      THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 *      OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 *      MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 *      I SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
 *      CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
 *     You can reach the author of this software at :
 *          p r e e t . w i k i @ g m a i l . c o m
 */

/**
 * @file
 * This contains the period callback functions for the periodic scheduler
 *
 * @warning
 * These callbacks should be used for hard real-time system, and the priority of these
 * tasks are above everything else in the system (above the PRIORITY_CRITICAL).
 * The period functions SHOULD NEVER block and SHOULD NEVER run over their time slot.
 * For example, the 1000Hz take slot runs periodically every 1ms, and whatever you
 * do must be completed within 1ms.  Running over the time slot will reset the system.
 */

#include <stdint.h>
#include "periodic_callback.h"
#include <stdio.h>
#include "utilities.h"
#include "c_code/master.h"
#include "io.hpp"
#include "c_code/externs.h"
#include "c_code/motor.h"


/// This is the stack size used for each of the period tasks (1Hz, 10Hz, 100Hz, and 1000Hz)
const uint32_t PERIOD_TASKS_STACK_SIZE_BYTES = (512 * 4);

/**
 * This is the stack size of the dispatcher task that triggers the period tasks to run.
 * Minimum 1500 bytes are needed in order to write a debug file if the period tasks overrun.
 * This stack size is also used while calling the period_init() and period_reg_tlm(), and if you use
 * printf inside these functions, you need about 1500 bytes minimum
 */
const uint32_t PERIOD_MONITOR_TASK_STACK_SIZE_BYTES = (512 * 3);

/// Called once before the RTOS is started, this is a good place to initialize things once
extern bool start_free_run_flag;
extern bool free_run_motor_flag;
extern bool free_steer_flag;
bool period_init(void)
{
    master_controller_init();
    return true;
}

/// Register any telemetry variables
bool period_reg_tlm(void)
{
    // Make sure "SYS_CFG_ENABLE_TLM" is enabled at sys_config.h to use Telemetry
    return true;
}

/**
 * Below are your periodic functions.
 * The argument 'count' is the number of times each periodic task is called.
 */
void period_1Hz(uint32_t count)
{
    (void) count;
    master_CAN_turn_on_bus_if_bus_off();
    master_send_debug_msg();
    transmit_heartbeat_on_can();
}

void period_10Hz(uint32_t count)
{
    (void) count;
    if (SW.getSwitch(1))
    {
        start_free_run_flag = !start_free_run_flag;
    }

    if (SW.getSwitch(2))
    {
        free_run_motor_flag = !free_run_motor_flag;
        if (free_run_motor_flag)
            drive_motor_fwd_slow();
        else
            drive_motor_stop();
    }

    if (SW.getSwitch(3))
    {
        drive_motor_rev_slow();
    }

    if (SW.getSwitch(4))
    {
        free_steer_flag = !free_steer_flag;
        if (free_steer_flag)
            master_steer_full_right();
        else
            master_steer_full_left();
    }

}

void period_100Hz(uint32_t count)
{
    (void) count;
    master_service_can_msgs();
    if (start_free_run_flag == false)
    {
        if ((true == sys_start_stop_cmd()))
        {
            start_obstacle_avoidance();
        }
        else
        {
            drive_motor_stop();
            master_dont_steer();
        }

    }
    master_send_command_to_motor_module();


    //    sensors_100Hz();          //Do not uncomment
    //    update_sensor_struct();   //Do not uncomment
    //    send_msgs_on_can();       //Do not uncomment
}

// 1Khz (1ms) is only run if Periodic Dispatcher was configured to run it at main():
// scheduler_add_task(new periodicSchedulerTask(run_1Khz = true));
void period_1000Hz(uint32_t count)
{
    (void) count;
}
