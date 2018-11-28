///scr_layout_label_create(x,y,value)
var a = instance_create(x+argument0,y+argument1,obj_layout_label);
a.parent = self.id
a.xx = argument0
a.yy = argument1
a.value = argument2
return a