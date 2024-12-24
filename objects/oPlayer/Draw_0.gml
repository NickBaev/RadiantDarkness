function draw_gun() {
	var _gun_x_offset = lengthdir_x(gun_oofset_distance, aim_dir);
	var _gun_y_offset = lengthdir_y(gun_oofset_distance, aim_dir);
	var _gun_y_scale = 1;
	if aim_dir > 90 && aim_dir < 270 {
		_gun_y_scale = -1;
	}
	draw_sprite_ext(sPistol, 0, gun_x + _gun_x_offset, gun_y + _gun_y_offset, 1, _gun_y_scale, aim_dir, c_white, 1);
}

if aim_dir >= 45 && aim_dir < 135 {
	draw_gun();
	draw_self();
} else {
	draw_self();
	draw_gun();
}