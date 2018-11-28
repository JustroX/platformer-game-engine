///scr_game_tr_generator_load(id,json)

var tr =  argument0;

if(tr.db == -1)
    tr.db = json_decode(json);
else
    show_debug_message('Terrain Generator DB already loaded.');