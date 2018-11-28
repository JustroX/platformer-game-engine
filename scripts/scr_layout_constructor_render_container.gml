///scr_layout_constructor_render_container(constructor_id, container_id, blueprint)

var constructor = argument0;
var obj_con = argument1;
var con =  argument2;


var children = con[? "children"]
for(var i=0; i<ds_list_size(children); i+=1)
{
    var item = children[| i];
   
    var type = item[? "type"];
    var raw = item;
    
    var child_obj;
    
    if( ds_map_exists(raw,"mod"))
    {
        mod_asset = asset_get_index( constructor.mod_prefix + raw[? "mod"] );
        switch(type)
        {
            case "container":
                child_obj = scr_layout_container_create_mod(0,0,mod_asset);
                scr_layout_constructor_render_container(constructor,child_obj,raw);
                break;
            case "button" : 
                child_obj = scr_layout_button_create_mod(0,0,mod_asset,false);
              break;
            case "input" : 
                child_obj = scr_layout_input_create_mod(0,0,false,mod_asset);
              break;
            case "image" : 
                var prop = item[? "properties"];
                child_obj = scr_layout_image_create_mod(0,0,asset_get_index(prop[? "asset"]),mod_asset);
              break;
            case "label" : 
                child_obj = scr_layout_label_create_mod(0,0,"",mod_asset);
             break;
        }
    }
    else
    {
        switch(type)
        {
            case "container":
                child_obj = scr_layout_container_create(0,0);
                scr_layout_constructor_render_container(constructor,child_obj,raw);
                break;
           case "form" : 
                child_obj = scr_layout_form_create();
               break;
            case "button" : 
                child_obj = scr_layout_button_create(0,0,false);
              break;
            case "input" : 
                child_obj = scr_layout_input_create(0,0,false);
              break;
            case "image" : 
                var prop = item[? "properties"];
                child_obj = scr_layout_image_create(0,0,asset_get_index(prop[? "asset"]));
              break;
            case "label" : 
                child_obj = scr_layout_label_create(0,0,"");
             break;
        }
    }
        
    if(ds_map_exists(raw,"properties"))
        scr_layout_constructor_properties_apply(child_obj, type, raw[? 'properties'])
    
    scr_layout_container_push(obj_con,child_obj);

}