///Movement code bro
//------------------
//--Keyboard Movement
//------------------

var speedLimit

speedLimit = argument0



if (gamepad_axis_value(0,gp_axislh) > .44  )
    {
        motion_set(0,speedLimit);  
    }

if (gamepad_axis_value(0,gp_axislh) < -.44 )
    {
        motion_set(180,speedLimit);  
    }

if (gamepad_axis_value(0,gp_axislv) < -.44 )
    {
        motion_set(90,speedLimit);  
    }

if (gamepad_axis_value(0,gp_axislv) > .44  )
    {
        motion_set(270,speedLimit);  
    }

    
    
if (gamepad_axis_value(0,gp_axislv) < -.44 && gamepad_axis_value(0,gp_axislh) > .44   )
    {
        motion_set(26,speedLimit);  
    }
if (gamepad_axis_value(0,gp_axislh) < -.44 && gamepad_axis_value(0,gp_axislv) < -.44)
    {
        motion_set(154,speedLimit);  
    }
if (gamepad_axis_value(0,gp_axislh) > .44  && gamepad_axis_value(0,gp_axislv) > .44 )
    {
        motion_set(333,speedLimit);  
    }
if (gamepad_axis_value(0,gp_axislh) < -.44  && gamepad_axis_value(0,gp_axislv) > .44 )
    {
        motion_set(206,speedLimit);  
    }

