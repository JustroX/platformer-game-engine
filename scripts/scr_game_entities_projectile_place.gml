///scr_game_entities_projectile_place(id,name,owner)

var obj = argument0;
var name = argument1;

if(obj.db==-1) return -1;

var item = obj.db[? name];

var a  = instance_create( 0 , 0, item[? "name"] );

a.behaviors = item[? "behaviors"]; 
for(var i=0; i< ds_list_size(behaviors) ; i+=1 )
{
    a.behaviors[| i] = asset_get_index(a.behaviors[| i]);
}

a.x = item[? "x"];
a.y = item[? "y"];
a.depth = item[? "depth"];
a.vspeed = item[? "vspeed"];
a.hspeed = item[? "hspeed"];
a.alarm[0] = item[? "lifetime"];
a.damage = item[? "damage"];
a.parent = argument2;