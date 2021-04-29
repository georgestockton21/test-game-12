var halfw = w * 0.5;
//it is var bc it's only used in this step
// w* 0.5 is width of font*5
draw_set_color(c_black);
//sets the color in a simple and blackboxed manner
draw_set_alpha(0.5);
//draw_set_alpha is just the ransparency of a drawing from 0-1
draw_roundrect_ext(x-halfw-border,y-h-(border*2)-displacement,x+halfw+border,y-displacement,15,15,false);

//the 15,15 is the radius of the curve along x axis, radius of the curve along y axis
//finally,, in this instance false = filled and true = 1 pixel outline

//final y is just y because all the y stuff has been account for already, i believe
//I SEE WHY NOW
//we're drawing this from bottom up
//it's not default, it's just how we did it through our coords
//+border is used bc it's just in the other direction


//y-h-(border*2) is used here to account for text height and the border 2 times bc it'll encompass all the tex
//it'll make sense when i use i on my own im sure
//on top and bottom bc text will be in  the middle

//remember we are going to draw this from the middle center
//im P sure that's how it always works with this stuff
//formatted like
//draw_round_ext(top left x, top left y, bottom right x, bottom right y,borderx,bordery,outline or filled)



//draw_roundrect has static rounded edges
//draw_roundrect_ext gives u more control
//pairing draw_roundrect_ext with draw_set_circle_precision lets u be ultra precise
//u probs wont need that for now or later really because custom sprites sounds cooler

draw_sprite(sMarker,0,x,y-displacement);
draw_set_alpha(1);
//draw_set_alpha returns back to 1 transparency so no other parts of the game get screwed up
// like so their text alpha is defauledt to 1 again
//the 0 here simply means the frame of the sprite
//-1 being current frame of animation playing
//and any other variable being simply the frame
//starting at 0
//so the 0 here is just frame 1
//this is amde at x,y because the rest of the text box is built up from that point
//image_alpha sets it for the specific sprite i believev
//and draw_sprite_ext lets u be specific and i believe overwrites the universal alpha settings
//draw_text_ext_color lets u have specific alpha states in text
//i believe, u'll use this later

//Draw text

DrawSetText(c_white,fFont1,fa_center,fa_top)

draw_text_transformed(x,y-h-border-displacement,text_current,2,2,image_angle)
//-h and - border gets the y back to the very top
//text_current is the variable we set to be the text we have to draw
//all that stuff is subtracted from draw_text because it is set to be at the top already and 
//the border and stuffff would be too extra,, i think?/ i'll figure it out

//fa_center draws in center horizontally
//fa_top draws at top and goes down
//by top this will just be relative to the center of the object,, i think.
//so basically it's just drawn in place
//OOOOH
//so fa_left is final character is at left side of x,y (object's x,y, i presume)
//fa_right is on right side of object's x,y (i.e. the origin point)
//fa_center is right in the horizontal middle
//fa_top is right above the origin point always (i think)
//fa_bottom is right under
//fa_middle is right on the point