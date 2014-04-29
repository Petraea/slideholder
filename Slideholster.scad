slides = 25;

module slide() {
cube([78,28,1.5],center=true);
}

module box() {
difference() {
translate([0,0,-8]) cube([82,slides*4-2,14],center=true);
difference() {
cube([78,slides*4-6,28],center=true);
intersection() {
union() {
translate([40,0,-20]) rotate([90,0,0]) scale([0.5,1,1]) cylinder(h=slides*4+15,r=20,center=true);
translate([-40,0,-20]) rotate([90,0,0]) scale([0.5,1,1]) cylinder(h=slides*4+15,r=20,center=true);
}
for (i = [0:slides-1] ) {
  rotate([90,0,0]) translate([0,0,i*4-slides*2-2]) slide();
}
}

}
translate([0,0,-8]) cube([58,slides*4-8,18],center=true);
}

}

box();