//scr_game_entities_animation_add(player,json)
var player = argument0;

player.animations       = json_decode(argument1);

//meh
var item = ds_map_find_first(player.animations);

for(var i=1; i<ds_map_size(player.animations); i+=1)
{
    item[? "on_cast"] = asset_get_index(item[? "on_cast"] );
    item[? "on_animation"] = asset_get_index(item[? "on_animation"] );
    item[? "on_success"] = asset_get_index(item[? "on_success"] );
    item[? "on_interrupt"] = asset_get_index(item[? "on_interrupt"] );
    item[? "spite"] = asset_get_index(item[? "sprite"] );

    item = ds_map_find_next(player.animations,item);
}



player.animation_active = "";
