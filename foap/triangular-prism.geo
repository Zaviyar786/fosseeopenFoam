// Gmsh project created on Thu Jan 18 17:14:11 2024
//+
Point(1) = {0, 0.5, 0, 0.1};
//+
Point(2) = {0, -0.5, 0, 0.1};
//+
Point(3) = {-0.833, 0, 0, 0.1};
//+
Point(4) = {20, 10, 0, 1.0};
//+
Point(5) = {20, -10, 0, 1.0};
//+
Point(6) = {-9, -10, 0, 1.0};
//+
Point(7) = {-9, 10, 0, 1.0};
//+
Line(1) = {6, 5};
//+
Line(2) = {5, 4};
//+
Line(3) = {4, 7};
//+
Line(4) = {7, 6};
//+
Line(5) = {1, 2};
//+
Line(6) = {2, 3};
//+
Line(7) = {3, 1};
//+
Curve Loop(1) = {3, 4, 1, 2};
//+
Curve Loop(2) = {7, 5, 6};
//+
Plane Surface(1) = {1, 2};
//+
Extrude {0, 0, 1} {
  Surface{1};
  Layers{1};
  Recombine;  
}
//+
Physical Surface("in", 45) = {23};
//+
Physical Surface("out", 46) = {31};
//+
Physical Surface("bottom", 47) = {27};
//+
Physical Surface("top", 48) = {19};
//+
Physical Surface("prism", 49) = {43, 39, 35};
//+
Physical Surface("frontback", 50) = {44, 1};
//+
Physical Volume("volume", 51) = {1};
