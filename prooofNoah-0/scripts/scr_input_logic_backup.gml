///Input Logic

/*
if keyboard_check(vk_left){
hspeed -= 2;

}
if keyboard_check(vk_right){
hspeed += 2;

}
if keyboard_check(vk_up){
vspeed -= 2;

}
if keyboard_check(vk_down){
vspeed += 2;

}


if speed > 5{
speed = 5;
}
*/

/**
*This will be my attempt at abstraction for controls
*/
var east, west // northEast, north, northWest, southWest, south, southEast


    east = argument0;
    west = argument1;
    
    /*
    northEast = argument1;
    north = argument2;
    northWest = argument3;
    west = argument4;
    southWest = argument5;
    south = argument6;
    southEast = argument7;
    */

if (hspeed != 0)
    {
        isMoving =1 ;
    }//end if 
    else
    {
        isMoving = 0 ;
    }//end else
    
if (keyboard_check(east))
   {
   if ( hspeed <= abs(5))
        {
        hspeed = +5;
        sprite_index = spr_gringo_0;
        }
   if (hspeed < abs(5))
        {
            hspeed +=.5;
            image_index = 1;
            sprite_index = spr_gringo_0_kick;
            image_speed = abs(hspeed) / 25;
            
        }//end if speed
   }//end if keyboard_check

   
if (keyboard_check(west))
   {
   if (hspeed > - 6 && hspeed != -6)
        {
            hspeed -=.5;
            sprite_index = spr_gringo_180_kick;
            image_speed = abs(hspeed) / 25;
        }//end if speed
    
   }//end if keyboard_check
   
if (sprite_index = spr_gringo_180_kick && image_index = -1)
            {
                sprite_index = spr_gringo_180;
            }
   
   
  
/*   
if (keyboard_check(north) && keyboard_check(east))
  {
  direction =26;
  sprite_index =gringoup
  
  image_speed =.3  
  if (image_index>=3) and (image_index<=11) speed=10;
  if (image_index<3) and (speed>0) speed=6;
  if (image_index>11) speed=6;
  }
  
  
  }
 if keyboard_check(west)
  {
  direction =180;
  sprite_index =gringoleft
  image_speed=.4
  if (image_index>=3) and (image_index<=11) hspeed-=5;
  if (image_index<3) and (hspeed<0) hspeed-=2;
  if (image_index>11) hspeed-=3 ;
  }
 if keyboard_check(north) 
  {
  direction =90;
  sprite_index =gringovert
  
  image_speed =.3
  if (image_index>=3) and (image_index<=11) speed+=5;
  if (image_index<3) and (speed>0) speed+=2;
  if (image_index>11) speed+=3;  
  }
 if keyboard_check(vk_down)
  {
  direction =270;
  sprite_index =gringovertdown

  image_speed =.3
    if (image_index>=3) and (image_index<=11) speed+=5;
  if (image_index<3) and (speed>0) speed+=2;
  if (image_index>11) speed+=3;
  }


  
if keyboard_check(vk_up) && keyboard_check(vk_left)
  {
  direction =154;
  sprite_index =gringoupleft
  speed=
  image_speed =.3  
  if (image_index>=3) and (image_index<=11) speed+=10;
  if (image_index<3) and (speed>0) speed+=6;
  if (image_index>11) speed+=6;
  }
 if keyboard_check(vk_down) && keyboard_check(vk_left)
  {
  direction =206;
  sprite_index =gringodown
 
  image_speed =.3
  if (image_index>=3) and (image_index<=11) speed=10;
  if (image_index<3) and (speed>0) speed=6;
  if (image_index>11) speed=6;
  }
 if keyboard_check(vk_down) && keyboard_check(vk_right)
  {
  direction =333;
  sprite_index =gringodownright
  if (image_index>=3) and (image_index<=11) speed=10;
  if (image_index<3) and (speed>0) speed=6;
  if (image_index>11) speed=6;
  image_speed =.3
  }
 if keyboard_check(vk_down) && keyboard_check(vk_right) && keyboard_check(vk_up) && keyboard_check(vk_left)
  {
  speed=0
  }
*/
