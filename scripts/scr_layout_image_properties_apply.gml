///scr_layout_image_properties_apply(obj_id, json)

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

// asset
if(ds_map_exists(properties,"asset"))
{
    a.asset = asset_get_index(properties[? "asset"]);
}

ds_map_destroy(properties);