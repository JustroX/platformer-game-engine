///scr_game_entities_stat_get(id, name)

var value = argument0.stat[? argument1];

for(var i=0; i<argument0.buff_id; i+=1)
{
    var item  = argument0.buff[? argument0.buff[| i] ];
    if(ds_map_exists(item,argument1))
    {
        value += item[? argument1];
    }    
}

return  value;