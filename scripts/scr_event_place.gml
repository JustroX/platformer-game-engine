///scr_event_place(id, json )
var event = argument0;
var map = json_decode(json);
event.on_touch = map[? "on_touch"];
event.on_custom  =  map[? "on_custom"];
