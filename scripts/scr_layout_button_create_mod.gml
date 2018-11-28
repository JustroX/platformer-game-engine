///scr_layout_button_create_mod(x,y,obj,is_sprite_based)
var a= instance_create(x+argument[0],y+argument[1],argument[2]);
a.xx = argument[0]
a.yy = argument[1]
a.parent = self
if(argument_count > 2)
    a.is_sprite_based = argument[3]
return a