///scr_layout_constructor_blueprint_destroy_list(list)
var list = argument0
for(var i=0; i<ds_list_size(list); i++)
{
    var item = list[| i];
    var type = item[? "type"];

    //destroy individual
    if( type == "container" )
    {   
        var raw = item;
        scr_layout_constructor_blueprint_destroy_list(raw[? "children"]);
        ds_map_destroy(raw);  
    }
    if(ds_map_exists(item,"properties"))
        ds_map_destroy(item[? "properties"])
    ds_map_destroy(item);
}
ds_list_destroy(list);