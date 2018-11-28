///scr_event_load(id, json )
var event = argument0;
var map = json_decode(argument1);
event.on_touch =  map[? "on_touch"];
event.on_custom  =  map[? "on_custom"];

for(var i=0; i<ds_list_size(event.on_custom); i++)
{
    var item = event.on_custom[| i];
    item[? "condition"] = asset_get_index(item[? "condition"]);
    item[? "action"] = asset_get_index(item[? "action"]); 
}

ds_map_destroy(map);