//scr_game_entities_animation_add(player,animation)
var player = argument0;
var animation = player.animation[? argument1];

player.animation_cp = player.animation_step;
player.animation_active = argument1;

player.sprite_index = asset_get_index(animation[? "sprite"]);

script_execute(animation[? "on_cast"]);
player.animation_active = "";
