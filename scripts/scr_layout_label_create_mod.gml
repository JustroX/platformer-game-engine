///scr_layout_label_create_mod(x,y,value,obj_id)
var a = instance_create(x+argument0,y+argument1,argument3);
a.parent = self.id
a.xx = argument0
a.yy = argument1
a.value = argument2
return a