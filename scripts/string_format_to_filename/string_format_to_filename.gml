function string_format_to_filename(input){
	input = string_replace(input, " ", "_");
	input = string_replace(input, "(", "");
	input = string_replace(input, ")", "");
	return input;
}