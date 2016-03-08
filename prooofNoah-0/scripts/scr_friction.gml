///This is user defined friction that increments down speed so you are not on a
//damn ice rink.

var fricAmount;

fricAmount = argument0;

if (speed > 0)
    {
    speed -= fricAmount;
    
    }
