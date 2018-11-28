///scr_layout_container_push(container,component)
ds_list_add(argument0.children,argument1)
argument1.parent = argument0
argument1.depth = argument0.depth - 1