/// @description scr_senditem(spotid)
/// @param spotid
function scr_send_item(argument0) {
	var _file = file_text_open_write("send"+string(argument0))
	file_text_close(_file)
}
