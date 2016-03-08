///Z LOGIC
/**
*WHERE IT GOES: Into the step event
*WHAT IT DOES:This code handles the logic for all movement in the 
*"Z" Direction.
*/

z += zspeed;
/*I believe what this is telling me is that
AT ALL TIMES z=zbottom, the gravity is zero, and the zspeed is zero.
IF at any point that z <zbottom which would be the case if you move in
negative z while jumping, than zgravity = 1 and add it to zspeed.

EX Zsepeed is -8, everyframe add 1 until reaching zero at which point the
logic in ELSE is triggered.
*/

if (z<zbottom)
{
    zgravity=.9;
    zspeed+=zgravity;
    isJumping = 1;//Denotes when gravity is on, you are in the air 10/20/2015
}
else
{
    z=zbottom;
    zgravity=0;
    zspeed=0;
    isJumping = 0;//Denotes when gravity is off, you are on the floor 10/20/2015
};


