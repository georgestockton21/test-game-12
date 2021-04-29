

/// @description Draw Menu

draw_set_font(menu_font);
//sets the font to be used
draw_set_halign(fa_right);
//fa right aligns everything from right to left
//the halign means horizontal align
draw_set_valign(fa_bottom);
//this comes from the bottom and goes upwards
//valign means vertical align

//set this specifically everytime u use text or it'll be universal

for (var i = 0;i < menu_items; i++)
{
	//the code adds a 1 to i
	var offset = 2
	var txt = menu[i];
	//this calls the array
	//for example, if i == 1, then "Continue" is called
	if (menu_cursor == i)
	//menu cursor is going to be used to see what option is going to be summoned from the array
	//so, this means: if (item hovered over == i (the array being called {}))
	{
		txt = string_insert("> ", txt, 0)
		//string insert adds something to a preexisting string
		//so this here adds an arrow
		//so that lines works like this
		//txt = string_insert("> ", menu[1]*, beggining*)
		//* established by previous code
		//**0 = beggining
		var col = c_white
		//just the color of the text
		//var bc its only relevent in this draw event
	}
else
{
	var col = c_gray;
	//simply sets the text to grey when its not selected
	//basically, menu_cursor is what is selected, and i is just any instance of the text box
	//
}
	var xx = menu_x;
	//horizontal of menu
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	//y of menu = height of menu * i * 1.5,,, not sure what's goin on. i'll figure it out.
	draw_set_color(c_black);
	//sets color of next text
	draw_text_transformed(xx-offset,yy,txt,2,2,image_angle);
	draw_text_transformed(xx+offset,yy,txt,2,2,image_angle);
	draw_text_transformed(xx,yy+offset,txt,2,2,image_angle);
	draw_text_transformed(xx,yy-offset,txt,2,2,image_angle);
	//this redraws the txt string but offset on both the vertical and horizontal axis
	draw_set_color(col);
	//draws as the set color (white if selected grey if not)
	draw_text_transformed(xx,yy,txt,2,2,image_angle);
	//actual string color
}
//for is like while,, it does action while the statement given is true
//BUT they are structured like 
//for (pre-needed info; what is being checked; what is done every loop)

//AHHHHHHHH,, so the reason it adds 1 all the time is because its cycling thru seeing if it should make
//the text a different color,, i think!! and theres no flash bc it never really changes back
//until specified to