///scr_layout_container_destroy(id)
with(argument0)
{
    for( var i=0; i<ds_list_size(children); i++ )
    {
        with(children[| i] )
        {
            switch(object_index)
            {
                case obj_layout_form : scr_layout_form_destroy(self); break;
                case obj_layout_button : scr_layout_button_destroy(self); break;
                case obj_layout_input : scr_layout_input_destroy(self); break;
                case obj_layout_image : scr_layout_image_destroy(self); break;
                case obj_layout_label : scr_layout_label_destroy(self); break;
                case obj_layout_container : scr_layout_container_destroy(self); break;
            }
        }
    }
    instance_destroy()
}