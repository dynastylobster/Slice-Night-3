pointer = 0;
i = 0;
roomlist = [];
for (i = 0; room_exists(i); i++) {
	array_push(roomlist, room_get_name(i))
}
array_sort(roomlist, true);
waiting = 0;