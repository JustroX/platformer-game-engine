///scr_game_entities_backdrop_add(id,json)
var backdrops = argument0;
var map =  json_decode(argument1);
map[? "texture"] = asset_get_index(map[? "texture"]);
ds_list_add( backdrops.bgs , map );