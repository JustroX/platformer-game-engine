///scr_game_view_parallax_background_place( parallax, background , depth , x, y )
var parallax = argument0;
var background = argument1;

var xx = argument3;
var yy = argument4;

var layer_key = sha1_string_utf8(string(argument2));

if(not ds_map_exists(parallax.layer,layer_key))
{   
    parallax.layer[? layer_key] = instance_create(0,0,obj_view_parallax_layer);
    parallax.layer[? layer_key].backgrounds = ds_list_create();
    parallax.layer[? layer_key].depth = argument2;
    
    parallax.layer[? layer_key].cx = power( parallax.horizontal_c, argument2 );
    parallax.layer[? layer_key].cy = power( parallax.vertical_c, argument2 );
    
    parallax.layer[? layer_key].parallax = parallax.id;
}

var map = ds_map_create();
map[? "asset"] = background;
map[? "x"] = xx;
map[? "y"] = yy;

ds_list_add(parallax.layer[? layer_key].backgrounds, map);