///scr_layout_modal_destroy(id)

if(argument0.constructor !=-1)
    scr_layout_constructor_destroy(argument0.constructor);

with(argument0)
{
    scr_layout_container_destroy(children)
    instance_destroy()
    
}
