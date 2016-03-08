/**
*   MOVEMENT SCRIPT
*   IT GOES IN THE DAMN STEP EVENT
*   DOWN STILL DOES NOT KICK. PRICK!
*   MOST THINGS WORK WITH THIS
*/

var spd,dir0,dir26,dir90,dir154,dir180,dir206,dir270,dir333,kick0,kick26,kick90,kick154,kick180,kick206,kick270,kick333,isTurning;

dir0 = argument0
dir26 = argument1
dir90 = argument2
dir154 = argument3
dir180 = argument4
dir206 = argument5
dir270 = argument6
dir333  = argument7

kick0 = argument8
kick26 = argument9
kick90 = argument10
kick154 = argument11
kick180 = argument12
kick206 = argument13
kick270 = argument14
kick333 = argument15

spd = speed;
spd = .3;
isTurning = 0;

if !keyboard_check(vk_space)
{
 
if (keyboard_check(ord("D")) && keyboard_check(ord("W"))) 
    {
    direction = 26 ;
    speed += spd ;
        if zspeed == 0
        {   
            
            sprite_index = kick26;
            image_speed = speed /25;
        }
    
    }
    
    else if (keyboard_check(ord("A")) && keyboard_check(ord("W")))
      {
      direction = 154
      speed += spd
      
            if zspeed == 0
            {
                 
                 sprite_index = kick154;
                 image_speed = speed /25;
            } 
      }
    else if (keyboard_check(ord("A")) && keyboard_check(ord("S")))
      {
      direction = 206
      speed +=spd;
      
       if zspeed == 0
            {
                
                sprite_index = kick206;
                image_speed = speed /25;
            }
      } 
    else if (keyboard_check(ord("S")) && keyboard_check(ord("D")))
      {
      direction = 333
      speed +=spd;
      
       if zspeed == 0
            {
                
                sprite_index = kick333;
                image_speed = speed /25;
            }
      }
    else if (keyboard_check(ord("A")))
     {
         if (direction != 0) // if you are not going in the opposite direction than make direction = 180 and speed += spd
            {
                direction = 180;
                speed += spd;
            } 
        if (direction == 0 && speed > 0) // if you are going zero degrees and want to go 180 degrees, you need to slow down before doing so
            {
                
                speed -= .4;  
                //here is were I want to put the turning animation I think
             
            }
        if (speed == 0) // if you are not moving at all than your direction = 180 and increase speed by spd variable
            {
            direction = 180;
            speed += spd;
            }
        if direction == 180 && speed > 0
            {
                sprite_index = kick180;   
            }
        if (direction == 0) // the issue here is that when you are slowing down
                            //you are still going in the direction of 0 and thus still trigering animation
            {
         
                        sprite_index = kick180; 
             
            }
     
     
     /* if zspeed == 0
            {
                
                sprite_index = kick180;
                image_speed = speed /25;
            }
     */
     
     }
    else if (keyboard_check(ord("S")))
     {
            /**
        *Code below describes how to handle moving in the opposite direction.
        */
     
      if (direction != 90) // if you are not going in the opposite direction than make direction = dir and speed += spd
            {
                direction = 270;
                speed += spd;
            } 
        if (direction == 90 && speed > 0) // if you are going one way and want to go the other, you need to slow down before doing so
            { 
                speed -= .4;  
            }
        if (speed == 0) // if you are not moving at all than your direction = 180 and increase speed by spd variable
            {
            direction = 270;
            speed += spd;
            }
     
      if zspeed == 0
            {
                
                sprite_index = kick270;
                image_speed = speed /25; 
             }
     }
    else if (keyboard_check(ord("D")))
     {
        /**
        *Code below describes how to handle moving in the opposite direction.
        */
     
      if (direction != 180) // if you are not going in the opposite direction than make direction = 180 and speed += spd
            {
                direction = 0;
                speed += spd;
            } 
        if (direction == 180 && speed > 0) // if you are going zero degrees and want to go 180 degrees, you need to slow down before doing so
            { 
                speed -= .4;  
            }
        if (speed == 0) // if you are not moving at all than your direction = 180 and increase speed by spd variable
            direction = 0;
            speed += spd
      
            
      if zspeed == 0
            {
                
                sprite_index = kick0;
                image_speed = speed /25; 
            }
     }
    else if (keyboard_check(ord("W")))
     {
         /**
        *Code below describes how to handle moving in the opposite direction.
        */
     
      if (direction != 270) // if you are not going in the opposite direction than make direction = dir and speed += spd
            {
                direction = 90;
                speed += spd;
            } 
        if (direction == 270 && speed > 0) // if you are going one way and want to go the other, you need to slow down before doing so
            { 
                speed -= .4;  
            }
        if (speed == 0) // if you are not moving at all than your direction = 180 and increase speed by spd variable
            {
            direction = 90;
            speed += spd;
            }
            
      if zspeed == 0
            {
                
                sprite_index = kick90;
                image_speed = speed /25;
            }
     }
     
}//end keyboard space
    
//Directional stop

  if (speed == 0 && jumpHeight == 0)
  {
    if (direction == 26)
        {
            sprite_index = dir26;
            image_speed = 0;
        }
    if (direction == 154)
        {
            sprite_index = dir154;
            image_speed = 0;
        }
    if (direction == 206)
        {
            sprite_index = dir206;
            image_speed = 0;
        }
    if (direction == 333)
        {
            sprite_index = dir333;
            image_speed = 0;
        }
    if (direction == 180)
        {
            sprite_index = dir180;
            image_speed = 0;
        }
    if (direction == 270)
        {
            sprite_index = dir270;
            image_speed = 0;
        }
    if (direction == 0)
        {
            sprite_index = dir0;
            image_speed = 0;
        }
    if (direction == 90)
        {
            sprite_index = dir90;
            image_speed = 0;
        }
  }
   
