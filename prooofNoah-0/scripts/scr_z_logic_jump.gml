/**
*This piece of code is to determine how long the space bar as been pressed
*down for. The longer its held down the higher your ollie will be.
*/


var jumpButton;

jumpButton = argument0;

if (keyboard_check(jumpButton))
    {
        if (jumpHeight >= -12)
        {
            jumpHeight -= .8;  
        }
        
    }//end if
    
   
if keyboard_check_released(jumpButton)
    {
    zspeed = jumpHeight;
    jumpHeight = 0;
    }//end if

