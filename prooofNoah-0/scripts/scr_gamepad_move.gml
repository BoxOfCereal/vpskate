///Movement code bro
//------------------
//--Keyboard Movement
//------------------

var speedLimit

speedLimit = argument0

if (gamepad_button_check(0,gp_padr))
    {
        motion_set(0,speedLimit);  
    }

if (gamepad_button_check(0,gp_padl))
    {
        motion_set(180,speedLimit);  
    }

if (gamepad_button_check(0,gp_padu))
    {
        motion_set(90,speedLimit);  
    }

if (gamepad_button_check(0,gp_padd))
    {
        motion_set(270,speedLimit);  
    }

    
    
if (gamepad_button_check(0,gp_padr) && (gamepad_button_check(0,gp_padu)))
    {
        motion_set(26,speedLimit);  
    }
if (gamepad_button_check(0,gp_padl) && gamepad_button_check(0,gp_padu))
    {
        motion_set(154,speedLimit);  
    }
if (gamepad_button_check(0,gp_padr) && gamepad_button_check(0,gp_padd))
    {
        motion_set(333,speedLimit);  
    }
if (gamepad_button_check(0,gp_padl) && gamepad_button_check(0,gp_padd))
    {
        motion_set(206,speedLimit);  
    }

