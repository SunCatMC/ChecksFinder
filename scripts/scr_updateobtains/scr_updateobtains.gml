function scr_updateobtains() {
	var _filename = file_find_first("*.item",0)
	var _data_update = false
	while (_filename != "")
	{
	    if (!file_exists(_filename+"obtain"))
	    {
			_data_update = true
	        var _file = file_text_open_read(_filename)
	        var _read = file_text_read_string(_file)
	        if (real(string_digits(_read)) == 80000)
	            scr_getitem("width")
	        if (real(string_digits(_read)) == 80001)
	            scr_getitem("height")
	        if (real(string_digits(_read)) == 80002)
	            scr_getitem("bomb")
	        file_text_close(_file)
	        file_text_close(file_text_open_write(_filename+"obtain"))
	    }
	    _filename = file_find_next()
	}
	return _data_update
}
