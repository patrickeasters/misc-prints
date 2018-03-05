base_w = 38;
base_h = 34;
base_t = 3;

wall_h = 3;
wall_t = 2;
lip = 3;

tolerance = .75;

//base
cube([base_w+2*tolerance+2*wall_t, base_h+tolerance+wall_t, base_t]);

//walls
translate([0, 0, base_t]) {
  cube([base_w+2*tolerance+2*wall_t, wall_t, wall_h]);
  cube([wall_t, base_h+tolerance+wall_t, wall_h]);
  translate([base_w+2*tolerance+wall_t, 0, 0])
    cube([wall_t, base_h+tolerance+wall_t, wall_h]);
}

//lips
translate([0, 0, base_t+wall_h]) {
  cube([base_w+2*tolerance+2*wall_t, wall_t+lip, wall_t]);
  cube([wall_t+lip, base_h+tolerance+wall_t, wall_t]);
  translate([base_w+2*tolerance+wall_t-lip, 0, 0])
    cube([wall_t+lip, base_h+tolerance+wall_t, wall_t]);
}