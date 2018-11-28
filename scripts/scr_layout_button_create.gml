///scr_layout_button_create(x,y,is_sprite_based)
var a= instance_create(x+argument[0],y+argument[1],obj_layout_button);
a.xx = argument[0]
a.yy = argument[1]
a.parent = self.id
if(argument_count > 2)
    a.is_sprite_based = argument[2]
return a