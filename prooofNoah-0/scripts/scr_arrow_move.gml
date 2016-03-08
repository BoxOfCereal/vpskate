///Movement code bro
//------------------
//--Keyboard Movement
//------------------

var speedLimit

speedLimit = argument0

if (keyboard_check(vk_right))
    {
        motion_set(0,speedLimit);  
    }

if (keyboard_check(vk_left))
    {
        motion_set(180,speedLimit);  
    }

if (keyboard_check(vk_up))
    {
        motion_set(90,speedLimit);  
    }

if (keyboard_check(vk_down))
    {
        motion_set(270,speedLimit);  
    }

    
    
if (keyboard_check(vk_right) && keyboard_check(vk_up))
    {
        motion_set(26,speedLimit);  
    }
if (keyboard_check(vk_left) && keyboard_check(vk_up))
    {
        motion_set(154,speedLimit);  
    }
if (keyboard_check(vk_right) && keyboard_check(vk_down))
    {
        motion_set(333,speedLimit);  
    }
if (keyboard_check(vk_left) && keyboard_check(vk_down))
    {
        motion_set(206,speedLimit);  
    }

