///scr_layout_button_properties_apply(obj_id, json)

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

// mouse
if(ds_map_exists(properties,"onclick"))
{
    a.onclick = asset_get_index(properties[? "onclick"]);
}
if(ds_map_exists(properties,"onmousedown"))
{
    a.onmousedown = asset_get_index(properties[? "onmousedown"]);
}
if(ds_map_exists(properties,"onmouseup"))
{
    a.onmouseup = asset_get_index(properties[? "onmouseup"]);
}
if(ds_map_exists(properties,"onmouseenter"))
{
    a.onmouseenter = asset_get_index(properties[? "onmouseenter"]);
}
if(ds_map_exists(properties,"onmouseleave"))
{
    a.onmouseleave = asset_get_index(properties[? "onmouseleave"]);
}




ds_map_destroy(properties);