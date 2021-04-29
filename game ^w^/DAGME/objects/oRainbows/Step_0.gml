/// @description ?

x+=hsp;//x coord adds hsp
y+=vsp;//y coord add vsp

hsp*= 0.9;//slowly degrades speed. doesnt have 2 be floored or whatevz bc particle is deleted soon after inception
vsp*=0.9;//same thing but vsp. remember diagonal is just an x paired with a y at the same time

//mad cool that *= exists. i assume and believe /= is a thing as well