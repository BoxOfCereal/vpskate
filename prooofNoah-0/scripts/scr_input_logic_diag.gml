/**
* This script defines input logic. It creates changable parameters
* that allow you to use the script to move in any direction by only
* adding the script and setting the parameters.
* 
* 
*/


var key, key2, baseSprite , movingSprite, dir, amt;

    key = argument0; //What key used to move
    key2 = argument1;
    baseSprite = argument2; // Base sprite
    movingSprite = argument3; // Moving sprite
    dir = argument4; //what direction in degree player is moving
    amt = argument5; //by what amount to increment the speed in dir
    
    
  
   
if (keyboard_check(key) && keyboard_check(key2))
   {
        
            direction = dir;
            speed += amt;
            sprite_index = movingSprite;
            image_speed = abs(hspeed) / 25;
        
   }//end if keyboard_check
/*
if (!keyboard_check(key) && speed = 0)
    {
    sprite_index = baseSprite
    }
*/

