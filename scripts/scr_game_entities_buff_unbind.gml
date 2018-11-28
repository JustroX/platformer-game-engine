///scr_game_entities_buff_unbind(npc,idx)
var idx = argument0;

ds_map_delete(argument0.buff,idx);

for(var i=0; i<ds_list_size(argument0.buff_id); i+=1)
{
    if( argument0.buff_id[| i] == idx )
    {
        ds_list_delete(argument0.buff_id,i);
        break;
    }
}