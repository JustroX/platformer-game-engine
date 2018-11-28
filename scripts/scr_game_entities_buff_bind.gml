///scr_game_entities_buff_bind(npc,buff_obj)
var idx = sha1_string_utf8(string(random(1000)));
argument0.buff[? idx]  = argument1;
ds_list_add(argument0.buff_id,idx);
return idx;