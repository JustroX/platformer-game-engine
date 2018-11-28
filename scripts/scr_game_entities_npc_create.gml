///scr_game_entities_npc_create(x,y,mod)

var a;

if(argument_count > 2)
    a = argument[2];
else
    a = obj_entities_npc;
    
a = instance_create(argument[0],argument[1],a);

a.behaviors = ds_list_create();
a.stat = -1;
a.buff = ds_map_create();
a.buff_id = ds_list_create();

return a;