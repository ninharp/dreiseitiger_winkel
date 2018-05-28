$fn=10;

diameter_plate = 6.2;     //DIAMETER in mm!
thickness_plate = 4;

module plate(){
    difference(){
        hull() {
            translate([thickness_plate / 2,thickness_plate / 2,thickness_plate / 2]){
                sphere(r=thickness_plate / 2);
                translate([40,0,0]) sphere(r=thickness_plate / 2);
                translate([40,40,0]) sphere(r=thickness_plate / 2);
                translate([0,40,0]) sphere(r=thickness_plate / 2);
            }
        }
        translate([20,20,0]) linear_extrude(thickness_plate) circle(d=diameter_plate);
    }
}

plate();
translate([0,thickness_plate,0]) rotate([90,0,0]) plate();
translate([thickness_plate,0,0]) rotate([0,-90,0]) plate();