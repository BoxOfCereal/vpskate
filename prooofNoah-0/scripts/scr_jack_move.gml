///movement

grass=0

if (speed > 5)
    {
    speed = 5;
    }

if grass=0
{
 if keyboard_check(vk_right) 
  {
  direction = 0;
  sprite_index = spr_gringo_0
  speed+=.5;
  }
  
 if keyboard_check(vk_left)
  {
  direction =180;
  sprite_index =spr_gringo_180
  hspeed-=.5;
  }
  
 if keyboard_check(vk_up) 
  {
  direction = 90;
  sprite_index =spr_gringo_90
  speed+=.5;
  }
  
 if keyboard_check(vk_down)
  {
  direction = 270;
  sprite_index =spr_gringo_270
  speed+=.5;
  }

 if keyboard_check(vk_up) && keyboard_check(vk_right)
  {
  direction = 26;
  sprite_index =spr_gringo_45
  speed+=.5;
  }
  
if keyboard_check(vk_up) && keyboard_check(vk_left)
  {
  direction = 154;
  sprite_index =spr_gringo_135
  speed+=.5;
  }
  
 if keyboard_check(vk_down) && keyboard_check(vk_left)
  {
  direction = 206;
  sprite_index =spr_gringo_225
  speed+=.5;
  }
  
 if keyboard_check(vk_down) && keyboard_check(vk_right)
  {
  direction = 333;
  sprite_index =spr_gringo_315
  speed+=.5;
  }
  
 if keyboard_check(vk_down) && keyboard_check(vk_right) && keyboard_check(vk_up) && keyboard_check(vk_left)
  {
  speed=0
  }
}

