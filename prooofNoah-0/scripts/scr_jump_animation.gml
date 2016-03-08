var ollie0,ollie26,ollie90,ollie154,ollie180,ollie206,ollie270,ollie333; 

ollie0 = argument0;
ollie26 = argument1;
ollie90 = argument2;
ollie154 = argument3;
ollie180 = argument4;
ollie206 = argument5;
ollie270 = argument6;
ollie333 = argument7;

if (keyboard_check_pressed(vk_space))
    {
    if (direction == 26)
        {
            sprite_index = ollie26;
            image_speed = 0;
            image_index = 1;
        }
    if (direction == 154)
        {
            sprite_index = ollie154;
            image_speed = 0;
            image_index = 1;
        }
    if (direction == 206)
        {
            sprite_index = ollie206;
            image_speed = 0;
            image_index = 1;
        }
    if (direction == 333)
        {
            sprite_index = ollie333;
            image_speed = 0;
            image_index = 1;
        }
    if (direction == 180)
        {
            sprite_index = ollie180;
            image_speed = 0;
            image_index = 1;
        }
    if (direction == 270)
        {
            sprite_index = ollie270;
            image_speed = 0;
            image_index = 1;
        }
    if (direction == 0)
        {
            sprite_index = ollie0;
            image_speed = 0;
            image_index = 1;
        }
    if (direction == 90)
        {
            sprite_index = ollie90;
            image_speed = 0;
            image_index = 1;
        }
}//end if keyboard_check_pressed
  
  
if keyboard_check_released(vk_space)
{
    if (direction == 26)
        {
            sprite_index = ollie26;
            image_speed = 0;
            image_index = 2;
                if image_index == 0
                {
                    image_speed = 0;
                }
        }
    if (direction == 154)
        {
            sprite_index = ollie154;
            image_speed = 0;
            image_index = 2;
             if image_index == 0
                {
                    image_speed = 0;
                }
        }
    if (direction == 206)
        {
            sprite_index = ollie206;
            image_speed = 0;
            image_index = 2;
             if image_index == 0
                {
                    image_speed = 0;
                }
        }
    if (direction == 333)
        {
            sprite_index = ollie333;
            image_speed = 0;
            image_index = 2;
             if image_index == 0
                {
                    image_speed = 0;
                }
        }
    if (direction == 180)
        {
            sprite_index = ollie180;
            image_speed = 0;
            image_index = 2;
             if image_index == 0
                {
                    image_speed = 0;
                }
        }
    if (direction == 270)
        {
            sprite_index = ollie270;
            image_speed = 0;
            image_index = 2;
             if image_index == 0
                {
                    image_speed = 0;
                }
        }
    if (direction == 0)
        {
            sprite_index = ollie0;
            image_speed = 0;
            image_index = 2;
             if image_index == 0
                {
                    image_speed = 0;
                }
        }
    if (direction == 90)
        {
            sprite_index = ollie90;
            image_speed = 0;
            image_index = 2;
             if image_index == 0
                {
                    image_speed = 0;
                }
        }

}//end if keyboard_check_released
   
