///scr_game_entities_backdrop_bind_parallax(back, parallax)

var back = argument0;
var par = argument1;


back.cx = power( par.horizontal_c, back.depth );
back.cy = power( par.vertical_c, back.depth );

back.parallax = parallax.id;
