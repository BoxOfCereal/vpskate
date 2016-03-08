///Movement code bro
//------------------
//--Keyboard Movement
//------------------

var speedLimit

speedLimit = argument0

if (keyboard_check(ord("D")))
    {
        motion_set(0,speedLimit);  
    }

if (keyboard_check(ord("A")))
    {
        motion_set(180,speedLimit);  
    }

if (keyboard_check(ord("W")))
    {
        motion_set(90,speedLimit);  
    }

if (keyboard_check(ord("S")))
    {
        motion_set(270,speedLimit);  
    }

    
    
if (keyboard_check(ord("D")) && keyboard_check(ord("W")))
    {
        motion_set(26,speedLimit);  
    }
if (keyboard_check(ord("A")) && keyboard_check(ord("W")))
    {
        motion_set(154,speedLimit);  
    }
if (keyboard_check(ord("D")) && keyboard_check(ord("S")))
    {
        motion_set(333,speedLimit);  
    }
if (keyboard_check(ord("A")) && keyboard_check(ord("S")))
    {
        motion_set(206,speedLimit);  
    }

