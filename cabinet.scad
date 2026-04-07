height = 80.125; // interior height is 2.125in less
show_ply = true;
show_walls = true;

module layer(layer_height) {
    
    // Beams
    translate([1.5, 0, layer_height - 3.125])
        cube([27, 1.5, 2.5]);
    translate([1.5, 22.5, layer_height - 3.125])
        cube([27, 1.5, 2.5]);
    translate([1.5, 33.5, layer_height - 3.125])
        cube([27, 1.5, 2.5]);
    translate([1.5, 45, layer_height - 3.125])
        cube([27, 1.5, 2.5]);
    
    // Crossbeams for small area
    translate([14.25, 1.5, layer_height - 3.125])
        cube([1.5, 21, 2.5]);
    translate([27, 1.5, layer_height - 3.125])
        cube([1.5, 21, 2.5]);
    
    // Plywood
    if(show_ply) {
        translate([1.5, 22.5, layer_height - 0.625])
            cube([27, 24, 0.625]);
        translate([14.25, 0, layer_height - 0.625])
            cube([14.25, 22.5, 0.625]); 
    }
        
    // Structural beams
    translate([27, 0, layer_height - 5.625])
        cube([1.5, 46.5, 2.5]);
    translate([1.5, 22.5, layer_height - 5.625])
        cube([1.5, 24, 2.5]);
}

// Left vertical beams
cube([1.5, 2.5, height]);
translate([0, 22, 0])
    cube([1.5, 2.5, height]);
translate([0, 33, 0])
    cube([1.5, 2.5, height]);
translate([0, 44, 0])
    cube([1.5, 2.5, height]);

// Right vertical beams
translate([28.5, 0, 0])
    cube([1.5, 2.5, height]);
translate([28.5, 11, 0])
    cube([1.5, 2.5, height]);
translate([28.5, 22, 0])
    cube([1.5, 2.5, height]);
translate([28.5, 33, 0])
    cube([1.5, 2.5, height]);
translate([28.5, 44, 0])
    cube([1.5, 2.5, height]);
    
// Bottom beams
translate([1.5, 0, 0])
    cube([27, 2.5, 1.5]);
translate([1.5, 2.5, 0])
    cube([2.5, 19.5, 1.5]);
translate([4, 11, 0])
    cube([24.5, 2.5, 1.5]);
translate([1.5, 22, 0])
    cube([27, 2.5, 1.5]);
translate([1.5, 33, 0])
    cube([27, 2.5, 1.5]);
translate([1.5, 44, 0])
    cube([27, 2.5, 1.5]);

// Roof support
translate([27, 0, height - 2.5])
    cube([1.5, 46.5, 2.5]);
translate([1.5, 0, height - 2.5])
    cube([1.5, 46.5, 2.5]);


if(show_ply) {
    // Floor
    translate([1.5, 0, 1.5])
        cube([27, 46.5, 0.625]);
        
    // Roof
    translate([0, 0, height])
        cube([30, 46.5, 0.625]);
}

if(show_walls) {
    // Walls
    translate([0, 46.5, 0])
        cube([30, 0.625, height]);
    translate([-0.625, 22, 0])
        cube([0.625, 24.5, height]);
    translate([30, 0, 0])
        cube([0.625, 46.5, height]);
    translate([0, -0.625, 0])
        cube([30, 0.625, height]);
    
    // Door
    rotate([0, 0, 125])
        translate([-0.625, 0, 0])
        cube([0.625, 22, height]);
}



layer(32.125);
layer(56.125);