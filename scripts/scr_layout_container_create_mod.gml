///scr_layout_container_create_mod(x,y,object_id)
var a = instance_create(x+argument0,y+argument1,argument2);
a.parent = self.id
a.xx = argument0
a.yy = argument1
return a;