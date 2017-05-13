module blankpokedex(){
linear_extrude(height =5)
import("PrintableLeft.dxf",layer="01Base");
linear_extrude(height =10)
import("PrintableLeft.dxf",layer="02TopTrim");
linear_extrude(height =6)
import("PrintableLeft2.dxf",layer="05Buttons");
difference(){
linear_extrude(height =6)
import("PrintableLeft.dxf",layer="03Screen");
linear_extrude(height =7)
import("PrintableLeft2.dxf",layer="04ScreenIndent");
}
rotate(a=[90,0,0])
translate(v=[70,5,-50])
cylinder(r=5,h=100,center=true);
translate(v=[10,90,0])
cylinder(r=5,h=11);
translate(v=[10,90,10])
sphere(r=4,center=true);
}

difference(){
blankpokedex();
translate(v=[70,8.7,5])
rotate(a=[90,0,0])
cylinder(r=1.5,h=17.5,center=true);
translate(v=[70,92.3,5])
rotate(a=[90,0,0])
cylinder(r=1.5,h=17.5,center=true);
translate(v=[70,1.5,5])
rotate(a=[90,0,0])
cylinder(r=2.5,h=3,center=true);
translate(v=[70,98.51,5])
rotate(a=[90,0,0])
cylinder(r=2.5,h=3,center=true);
translate(v=[70,12.5,5])
rotate(a=[90,0,0])
cylinder(r=5.01,h=5,center=true);
translate(v=[70,87.5,5])
rotate(a=[90,0,0])
cylinder(r=5.01,h=5,center=true);
}

