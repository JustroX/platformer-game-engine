///scr_game_entities_animation_cancel(player,animation)
var player = argument0;
var animation = argument1;
script_execute(animation[? "on_interrupt"],player.animation_step - player.cp);
player.animation_active = "";
player.sprite_index = player._spr_idle
