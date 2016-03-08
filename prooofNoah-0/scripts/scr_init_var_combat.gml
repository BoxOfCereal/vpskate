///Initialize variables

/*===================================================================
---initialize variables--

--This goes into the CREATE event of objects you want to be controlled
by the player--

grav is going to represent gravity

hsp will represent horizontal speed

vsp will represent vertical speed

jumpspeed and movespeed are self explanitory

These are set to zero because they will be containers for our
speeds.

==================================================================*/



global.trickDisable = 0;
global.jumpDisable = 0;

maxhp = 100;
hp = 100;
dmg = 0;

bail_animation = 0;
board_created = 0;
midtrick = 0;
board = 0;
grav = 0.2;
hsp = 0;
vsp = 0;
jumpspeed = 7;
movespeed = 4;

//trick variables
shuvit =0;
kickflip =0;
