right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

//movement
var _x_key = right_key - left_key;
var _y_key = down_key - up_key;
move_dir = point_direction(0, 0, _x_key, _y_key);

var _input = point_distance(0, 0, _x_key, _y_key)
_input = clamp(_input, 0, 1);
var _speed = move_speed * _input;
x_speed = lengthdir_x(_speed, move_dir)
y_speed = lengthdir_y(_speed, move_dir)

if place_meeting(x + x_speed, y, oWall) {
	x_speed = 0;
}
if place_meeting(x, y + y_speed, oWall) {
	y_speed = 0;
}

x += x_speed;
y += y_speed;
depth = -bbox_bottom;

// gun
gun_x = x;
gun_y = y + gun_y_offset;
aim_dir = point_direction(gun_x, gun_y, mouse_x, mouse_y)

// sprite
if _speed == 0 {
	image_index = 0;
}
face = round(aim_dir / (360 / array_length(sprite)));
if face == array_length(sprite) {
	face = 0;
};
sprite_index = sprite[face];