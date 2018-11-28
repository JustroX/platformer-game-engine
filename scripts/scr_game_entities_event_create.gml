///scr_event_create(x,y, object )

var xx = argument[0];
var yy = argument[1];

var obj = obj_entities_event;

if(argument_count>2)
    obj = argument[2];

var a = instance_create(xx,yy,obj);
a.on_touch = -1;
a.on_custom = -1;
return a;