///scr_game_tr_generator_generate(id,x,y)
var tr =  argument0;

if(tr.location==-1)
{
    show_debug_message("No location has been specified.");
    return '';
}

var bp = tr.db[? tr.location];
var scr = asset_get_index(bp[? "generate"]);

script_execute(scr,tr,argument1,argument2);