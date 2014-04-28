slides = 50;

module slide() {
cube([78,28,2],center=true);
}

module box() {
difference() {
translate([0,0,-8]) cube([82,slides*4-2,14],center=true);
difference() {
cube([78,slides*4-6,28],center=true);
intersection() {
union() {
translate([40,0,-20]) rotate([90,0,0]) cylinder(h=slides*4+15,d=40,center=true);
translate([-40,0,-20]) rotate([90,0,0]) cylinder(h=slides*4+15,d=40,center=true);
}
for (i = [0:slides-1] ) {
  rotate([90,0,0]) translate([0,0,i*4-slides*2-2]) slide();
}
}

}
}

}

box();