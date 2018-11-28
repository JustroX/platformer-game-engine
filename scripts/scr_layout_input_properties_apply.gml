///scr_layout_input_properties_apply(obj_id, json)

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
    a.value = properties[? "value"];
}

// focus
if(ds_map_exists(properties,"onfocus"))
{
    a.onfocus = asset_get_index(properties[? "onfocus"]);
}
if(ds_map_exists(properties,"onblur"))
{
    a.onblur = asset_get_index(properties[? "onblur"]);
}

ds_map_destroy(properties);