///scr_game_entities_projectile_load(id,json)

var obj = argument0;
var json = argument1;

var map = json_decode(json);

var key = ds_map_find_first(map);
for(var i=1; i< ds_map_size(map) ; i+=1)
{
    var item = map[? key];
    item[? "name"] = asset_get_index( item[? "name"] );
}

obj.db = map;