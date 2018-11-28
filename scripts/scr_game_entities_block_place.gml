///scr_game_entities_block_place(block,x,y,label)
var block = argument0;

var xx = argument1;
var yy = argument2;
var label = argument3;

var item = block.db[? label];

var texture = asset_get_index( item[? "texture"] );
var obj_index =  asset_get_index(item[? ""]);

var inst  = instance_create(xx,yy,obj_index);

inst.texture = texture;

var bg_x = item[? "bg_x"];
var bg_y = item[? "bg_y"];

inst.bg[0,0] = bg_x[| 0];
inst.bg[1,0] = bg_x[| 1];
inst.bg[2,0] = bg_x[| 2];

inst.bg[0,1] = bg_y[| 0];
inst.bg[1,1] = bg_y[| 1];
inst.bg[2,1] = bg_y[| 2];

inst.width = item[? "width"];
inst.height = item[? "height"];

