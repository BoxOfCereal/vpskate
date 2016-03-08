/*
*WHERE IT GOES:This script goes into a draw event
*WHAT IT DOES: All this script does is tell game maker to draw a specific
*sprite at whatever coordinates the object is at PLUS the Z amount.
*This makes manipulation of the z possible. 
*
*
*NOTE: THis may not be able to be abstracted as you might need to 
*have the specific sprite drawn in different objects. This is just a
*precaution and an attempt at staying neat.
*
*Drawing it with sprite_ext allows me to take the current sprite_index
*image_index and all other variables associated with it and draw it.
*This is a much better use than simply drawing sprite
*/

draw_sprite_ext(sprite_index, image_index, x,y + z, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
