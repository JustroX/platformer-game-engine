///scr_layout_constructor_render(id)
var constructor = argument0
if(constructor.blueprint != -1)
{
    //instantiate
    var con = constructor.blueprint
    
    var obj_con;
    /* UNCOMMENT IF MOD FUNCTION IS AVAILABLE 
    if( ds_map_exists(con,"mod"))
        obj_con = scr_layout_container_create_mod(0,0, asset_get_index( contructor.mod_prefix + con[? "mod"] ) );
    else
    */
        obj_con= scr_layout_container_create(0,0);
    
    constructor.container = obj_con;
    
    scr_layout_constructor_render_container(constructor,obj_con,con);
}
else
    show_debug_message("Blueprint not yet assigned.");
