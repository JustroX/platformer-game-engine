///scr_game_entities_animation_end(player,animation)
var player = argument0;
var animation = argument1;

script_execute(animation[? "on_success"],player.animation_step-player.animation_cp);
player.animation_active = "";
player.sprite_index = player._spr_idle
