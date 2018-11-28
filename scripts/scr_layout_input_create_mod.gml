///scr_layout_input_create_mod(x,y,is_sprite_based,object_id)
var a = instance_create(x+argument[0],y+argument[1],argument[3]);
a.parent = self.id
a.xx  = argument[0]
a.yy  = argument[1]
a.onfocus =-1
a.onblur = -1
if(argument_count > 2)
    a.is_sprite_based = argument[2]
return a