/**
* This script defines input logic. It creates changable parameters
* that allow you to use the script to move in any direction by only
* adding the script and setting the parameters.
* 
* 
*/


var key, baseSprite , movingSprite, dir, amt;

    key = argument0; //What key used to move
    baseSprite = argument1; // Base sprite
    movingSprite = argument2; // Moving sprite
    dir = argument3; //what direction in degree player is moving
    amt = argument4; //by what amount to increment the speed in dir
 
   
  
   
if (keyboard_check(key))
   {
            direction = dir; 
            speed += amt;
            sprite_index = movingSprite;
            image_speed = abs(speed) / 25;
            
        if speed == 0
        {
            sprite_index = baseSprite;
        }
   }//end if keyboard_check

/*   
if (!keyboard_check(key) && speed = 0)//If nothing is pressed and there's no speed use base sprite
    {
    sprite_index = baseSprite
    }//end if
*/

