///scr_game_entities_block_load(block, json)
var block = argument0;
var lib = json_decode(json);

for( var i=0; i<ds_list_size(lib); i++)
{
    var item = lib[| i];
    block.db[? item[? "label"] ] = item;
}
ds_list_destroy(lib);
