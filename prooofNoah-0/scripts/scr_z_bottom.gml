/**
*WHERE IT GOES: In the End Step
*WHAT IT DOES: What this is saying is, when you
*are not meeting any of the obstacles your Z 
*bottom will equal zero. This effectively sets the zbottom
*at all times to be your bottom. Pretty damn clever guy who wrote this.
*/

//set the bottom of z coordinate

if (!place_meeting(x,y,par_obstatcles))
{
    zbottom=0;
};//end if

