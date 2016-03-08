if midtrick = 0 && global.trickDisable = 0 {
key_left = keyboard_check_pressed(vk_left);
key_up = keyboard_check_pressed(vk_up);
key_right = keyboard_check_pressed(vk_right);

}

if global.jumpDisable == 0 {
key_jump = keyboard_check_released(vk_space);
key_jump_held = keyboard_check(vk_space);
}


/*may not need this
move = key_left + key_right;
hsp = move * movespeed;
*/
//===================Gravity===================

if (vsp < 10) vsp += grav;  

//jump

//making it so I know when im on the gound
if (place_meeting(x,y+1,obj_floor)) {
    global.ground = 1;
    board = 0;
    key_left = 0;
    }else{
    global.ground = 0;
    }

    //this is an attempt to make it so shit wont trigger while bailing -not working
    if sprite_index = ani_squat && keyboard_check_released(vk_space) && (board == 0) {
    image_index = 0;
    sprite_index = ani_jump;
   //sprite_index = spr_boybattle_jump; //Trying to abstract
   image_speed = 0.05;
   vsp = key_jump * -jumpspeed;
   global.jumpDisable = 1;
    }

/*
if ((key_jump == 1) && (sprite_index != spr_boybattle_jump)&& (board == 0))
{
   image_index = 0;
   sprite_index = spr_boybattle_jump;
   image_speed = 0.05;
        
} 
*/

if ((sprite_index = ani_jump) && (image_index == 1) )
{
 image_index = 0;
 sprite_index = ani_stand;
}


// trick input
if (!place_meeting(x,y+1,obj_floor))
{
    trick_input = 1;
}
else
{

trick_input = 0; 

}


//makes it so can only ollie anim when on ground
//
//got ride of global.bail because it wasn't working. Need to figure out how to disable all controls
//while bailing is happening.
if ((key_jump_held == 1 ) && (place_meeting(x,y+1,obj_floor)))
{ 
   sprite_index = ani_squat;
   
}

if image_index = 1 && sprite_index = ani_squat
    {
    image_speed = 0;
    }

//Horizontal collision
                                   
if (place_meeting(x+hsp,y,obj_floor))
{
    
    while (!place_meeting(x+sign(hsp),y,obj_floor))
        {
        x += sign(hsp);
        }
        
        hsp = 0;
}   
    

/*Vertical Collision
*/

if (place_meeting(x,y+vsp,obj_floor))
{
    while (!place_meeting(x,y + sign(vsp),obj_floor))
        {
        y += sign(vsp);
        }
        
        vsp = 0;
}   
    
x += hsp;
y += vsp;

/*
my_board.x = x + x_offset;
my_board.y = y + y_offset;
*/

//Tricks and shit

//Board Creation


//board removal
if board == 0 {
    with obj_board{
    instance_destroy();
    }

}


if key_left == 1  && trick_input == 1 && board == 0 {
sprite_index = ani_trick1;
instance_create(x+29,y,obj_board)
board = 1; 
left = 1;
global.midtrick = 1;
}

    if bail_animation = 1{
    with obj_board{
    instance_destroy();
}  
}


if sprite_index = ani_perfect || sprite_index = ani_stand{
global.midtrick = 0;
}

/*Landing animation. I'm putting it even though most of the code
Switching to the landing animation is in with the tricks. After brief,
20 seconds of my time, search I could not figure out how to check to see
if the image_index was at the end of its list. Without knowing how to do this
I will manually define the end of each trick image_index and with it when
the meeting of the ground and finishing of trick counts as a success. For 
whatever reason my organization values are set to tells me to put the landing
sprite change back to starting here.
*/

if sprite_index = ani_catch && global.ground = 1{
sprite_index = ani_land;
}

if sprite_index = ani_land && image_index = 2{
sprite_index = ani_stand;

}


//Bailing animation. Need to figure out how to disable all trick input while bailing is happening.
//Also can still change to jump animation which is bullshit.
if global.midtrick == 1 && global.ground == 1{
sprite_index = ani_bail;

}

//hp = hp - dmg;

if sprite_index = ani_bail
{
global.jumpDisable = 1;
global.trickDisable = 1;
global.midtrick = 0;
image_angle -= 10;
}

if sprite_index = ani_bail && image_angle == -40
{
hp = hp - 50;
sprite_index = ani_bail2;
image_angle = 0;
}

if sprite_index = ani_bail2{
x -= 2;
}

//attempting to abstract the object
if obj_boybattle.x = 0{
obj_boybattle.y = 100;
sprite_index = ani_recover;
image_speed = 1;

}



if sprite_index = ani_recover && obj_boybattle.x < 383{
hspeed = 4;
}

if sprite_index = ani_recover && obj_boybattle.x > 384{
speed = 0;
sprite_index = ani_stand;
}

if sprite_index = ani_stand{
global.jumpDisable = 0;
global.trickDisable = 0;
}


//Health bs

if hp = 0{
game_restart();
}
