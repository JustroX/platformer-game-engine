///scr_game_entities_block_create()
var a = instance_create(0,0,obj_entities_block);
a.game = self.id
a.db = ds_map_create();
return a;