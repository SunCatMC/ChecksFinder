function scr_setup() {
	global.bombcount = 5
	global.tilewidth = 5
	global.tileheight = 5
	global.checksgotten = 0
	global.spotlist = undefined
	draw_set_colour(c_white);
	for (var _i = 0; _i < global.tilewidth*global.tileheight; _i++)
	{
	    global.spotlist[_i] = 0
	}
	var _file = file_find_first("*", 0);
	while (_file != "")
	{
	    if (string_count("send",_file) > 0)
	        file_delete(_file)
	    _file = file_find_next();
	}
	file_find_close();
}
