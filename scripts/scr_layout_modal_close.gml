///scr_layout_modal_close(id)

if(argument0.constructor != -1)
    if( !is_undefined(argument0.constructor.container))
        scr_layout_container_destroy(argument0.constructor.container)