///scr_layout_constructor_blueprint_set(id,json)

var constructor = argument0;

if(constructor.blueprint == -1)
{
    var blueprint = json_decode(argument1);
    constructor.blueprint = blueprint
}
else
    show_debug_message("Template blueprint already set");