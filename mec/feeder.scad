module switchArm(){
    color([0.5, 0.5, 0.5])
        difference(){
            cube([28, 1.5, 4]);
            translate([0.3, -1, -1])
            cube([28, 2.2, 6]);
        }
}

module limitSwitchBody(){
    color([0.1, 0.1, 0.1])
    cube([20, 10.7, 6.5]);
    translate([7.5, 10.7, 1.5])
    color([1, 0, 0])
    cylinder(3.5,1,1);
    translate([3.5, 10, 1.5])
        rotate([0,0,10])
        switchArm();
}

module limitSwitchHoles(r, h){
    translate([4+2.5/2,1.8+2.5/2,0])
        cylinder(h,r,r);
    translate([13.5+2.5/2,1.8+2.5/2,0])
        cylinder(h,r,r);
}

module limitSwitch(){
    difference(){
        limitSwitchBody();
        translate([0, 0, -1])
            limitSwitchHoles(1.25, 10);
    }
}

limitSwitch();