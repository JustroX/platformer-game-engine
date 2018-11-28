///scr_layout_constructor_render(id, json)
var contructor = argument0

//instantiate
var con = constructor.blueprint[? "container"]

var obj_con;
if( ds_map_exists(con,"mod"))
    obj_con = instance_create(0,0, asset_get_index( contructor.mod_prefix + con[? "mod"] ) );
else
    obj_con= instance_create(0,0,obj_layout_container);

constructor.container = obj_con;

scr_layout_constructor_render_container(constructor,obj_con,con);
