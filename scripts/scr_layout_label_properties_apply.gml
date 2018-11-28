///scr_layout_label_properties_apply(obj_id, json)

var a = argument0;
var properties = argument1; //map id

if(ds_map_exists(properties,"x"))
{
    a.xx = properties[? "x"];
}
if(ds_map_exists(properties,"y"))
{
    a.yy = properties[? "y"];
}

if(ds_map_exists(properties,"value"))
{
    a.value= properties[? "value"];
}


ds_map_destroy(properties);