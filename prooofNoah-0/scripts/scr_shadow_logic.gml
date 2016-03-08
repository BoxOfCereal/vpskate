/**
*WHERE IT GOES: Into the Draw Event
*WHAT IT DOES: Script draws a shadow sprite underneath the object
*for the added illusion of height when jumping.
*
*NOTE:This, I believe, can easily be abstracted
*/


///Shadow Logic
//Need to make it so that if the place of meeting
//is not par_obstacle than display shadow under player
//else display shadow on the ground
draw_sprite(spr_shadow,0,x,y+2+zbottom);
