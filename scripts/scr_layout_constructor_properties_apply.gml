///scr_layout_constructor_properties_apply(child_obj, type, properties)
var child_obj = argument0
var type = argument1
var properties = json_decode(json_encode(argument2))

switch(type)
{
    case "container":
        scr_layout_container_properties_apply(child_obj,properties);
        break;
    case "button":
        scr_layout_button_properties_apply(child_obj,properties);
        break;
    case "input":
        scr_layout_input_properties_apply(child_obj,properties);
        break;
    case "image":
        scr_layout_image_properties_apply(child_obj,properties);
        break;
        
    case "label":
        scr_layout_label_properties_apply(child_obj,properties);
        break;
}