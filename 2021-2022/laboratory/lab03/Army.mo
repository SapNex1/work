model Army

type Units = Real(unit="Units");

parameter Real  a=0.4;
parameter Real  b=0.67;
parameter Real  c=0.77;
parameter Real  h=0.14;

parameter Real  a1=0.24;
parameter Real  b1=0.67;
parameter Real  c1=0.47;
parameter Real  h1=0.14;

parameter Real  a2=0.4; 
parameter Real  b2=0.67; // Для 4 случая b2=0.75
parameter Real  c2=0.77; // Для 4 случая c2=0.6
parameter Real  h2=0.14;

Units x(start = 882000);
Units y(start = 747000);

Units x1(start = 882000);
Units y1(start = 747000);

Units x2(start = 882000);
Units y2(start = 747000);

equation
der(x) = -a*x-b*y+ sin(3*time) + 1;
der(y) = -c*x-h*y+ cos(2*time) + 2;

der(x1) = -a1*x1-b1*y1 + abs(sin(2*time));
der(y1) = -c1*x1*y1-h1*y1 + abs(cos(2*time));

der(x2) = -a2*x2-b2*x2*y2 + sin(3*time) + 1;
der(y2) = -h2*y2-c2*x2*y2 + cos(2*time) + 2;
end Army;
