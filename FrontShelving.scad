include <Front.scad>

color("red"){
    translate([20.5, 44.25, 0])
        cube([3.5, 1.5, 126]);
    translate([20.5, 124, 0])
        cube([3.5, 1.5, 126]);
    NewShelf(45.75);
    NewShelf(68.25);
    NewShelf(89.25);
}
    
    
module NewShelf(h) {
    translate([-3.5, 45.75, h])
        cube([27.5, 1.5, 2.5]);
    translate([-3.5, 122.5, h])
        cube([27.5, 1.5, 2.5]);
    translate([0, 44.25, h + 2.5])
        cube([1.5, 124 - 44.25 + 1.5, 3.5]);
    translate([22.5, 45.75, h + 2.5])
        cube([1.5, 124 - 44.25 - 1.5, 3.5]);
    translate([0, 45.75, h + 6])
        cube([24, 124 - 44.25 - 1.5, 0.5]);
}