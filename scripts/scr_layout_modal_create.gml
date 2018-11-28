///scr_layout_modal_create(x,y)
var a  = instance_create(0,0,obj_layout_modal);
a.parent = self.id;
a.constructor = -1;
a.xx = argument0;
a.yy = argument1;
return a;