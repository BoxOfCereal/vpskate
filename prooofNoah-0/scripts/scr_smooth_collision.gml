/**
*WHERE IT GOES: This script is placed into a collision event with
*The par_obstacles.
*WHAT IT DOES: This script provides smooth collision with obstacles
*when you are not at the same Z height as them. Remember that certain
*objects need to be messed with to get the right collision "look"
*
*Another explination: if you are "lower" than the object you are trying to get on,
*This will set your coords to the previous postion
*/


if (z>other.z) //Whether or not he player is the same height of the wall
{
    x = xprevious;
    y = yprevious;
    scr_move_contact_object(direction,-1,other);
    if (place_meeting(xprevious+hspeed,y,other))
    {
        hspeed = 0;
    }//end if
    else
    {
        x=xprevious+hspeed;
    };//end else
     if (place_meeting(x,yprevious+vspeed,other))
    {
        vspeed=0;
    }
    else
    {
        y=yprevious+vspeed;
    };
    
};
else
{
    zbottom=other.z
};

