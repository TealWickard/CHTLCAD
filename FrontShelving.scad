room_width = 172.75; // Not measured, inferred from 10 measurements below. If I had to guess, +/- 2" error

translate([-3.5, 0, 0]){
    cube([3.5, 1.5, 105]);
    S(9.5);
    S(28.75);
    S(44.25);
    S(60.25);
    S(76);
    S(92.25);
    S(108.25);
    S(124);
    S(140);
    S(156.5);
    S(171.25);
}
Shelf(45.75);
Shelf(68.25);
Shelf(89.25);

color("grey")
translate([-3.5, room_width, 0])
    cube([100, 0.5, 140]);
color("grey")
translate([-3.5, 0, 0,])
    cube([0.5, room_width + 0.5, 140]);
color("grey")
translate([-4, -0.5, 0])
    cube([23.5, 0.5, 140]);
color("grey")
translate([19, -0.5, 0])
    cube([0.5, 7.5, 140]);
color("grey")
translate([-4, 0, -0.5])
    cube([100.5, room_width + 0.5, 0.5]);


// Door
translate([20, 7, 0])
    rotate([0, 0, 40])
    translate([0, -1.5, 0])
    cube([35.5, 1.5, 79]);


module S(d) {
    translate([0, d, 0])
        cube([3.5, 1.5, 126]);
}

module Shelf(h) {
    translate([0, room_width - 32.75, h])
        cube([1.5, 32.75, 2.5]);
    translate([0, room_width - 24, h + 2.5])
        cube([88.25, 1.5, 3.5]);
    translate([0, room_width - 1.5, h + 2.5])
        cube([88.25, 1.5, 3.5]);
    translate([0, room_width - 24, h + 6])
        cube([88.25, 24, 0.5]);
}