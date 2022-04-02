model y
parameter Real pcr = 44;
  parameter Real N = 77;
  parameter Real q = 1;
  parameter Real t1 = 26;
  parameter Real t2 = 21;
  parameter Real p1 = 11;
  parameter Real p2 = 8.7;
  parameter Real k = 0.0013;
  Real M1(start = 7.1);
  Real M2(start = 8.1);
  Real M12(start = 7.1);
  Real M22(start = 8.1);
  Real a1; 
  Real a2;
  Real b; 
  Real c1; 
  Real c2;

equation
  a1 = pcr/(t1*t1*p1*p1*N*q);
  a2 = pcr/(t2*t2*p2*p2*N*q);
  b = pcr/(t1*t1*p1*p1*t2*t2*p2*p2*N*q);
  c1 = (pcr-p1)/(t1*p1);
  c2 = (pcr - p2)/(t2*p2);
  
  der(M1) = M1-(b/c1)*M1*M2-a1/c1*M1*M1;
  der(M2) = c2/c1*M2-b/c1*M1*M2-a2/c1*M2*M2;
  der(M12) = M12-(b/c1+k)*M12*M22-a1/c1*M12*M12;
  der(M22) = c2/c1*M22-b/c1*M12*M22-a2/c1*M22*M22;
end y;
