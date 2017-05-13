module rightpanel(){
linear_extrude(height =5)
import("PrintableRight.dxf");
}

module rightpanelblank(){
difference(){
rightpanel();
translate(v=[1,2,2])
scale(0.95)
rightpanel();
}
cube(size=[7,95,5]);
}

module hingedpanel(){
difference(){
rightpanelblank();
rotate(a=[90,0,0])
translate(v=[0,5,-47.5])
cylinder(r=5,h=100,center=true);
}

rotate(a=[90,0,0])
translate(v=[0,5,-12.5])
cylinder(r=5,h=5,center=true);

rotate(a=[90,0,0])
translate(v=[0,5,-87.5])
cylinder(r=5,h=5,center=true);
}

difference(){
hingedpanel();
rotate(a=[90,0,0])
translate(v=[0,5,-47.5])
cylinder(r=1.5,h=100,center=true);
}