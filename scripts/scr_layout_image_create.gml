///scr_layout_image_create(x,y,asset)
var a = instance_create(xx+argument0,yy+argument1,obj_layout_image);
a.parent = self.id
a.xx = argument0
a.yy = argument1
a.asset = argument2
return a;