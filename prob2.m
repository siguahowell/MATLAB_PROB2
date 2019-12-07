format short
x1=input('input a X1: ');
y1=input('input a y1: ');
x2=input('input a X2: ');
y2=input('input a y2: ');
x3=input('input a X3: ');
y3=input('input a y3: ');
c=(x1-x2)^(2) + (y1-y2)^(2);
a=(x2-x3)^(2) + (y2-y3)^(2);
b = (x3-x1)^(2) + (y3-y1)^(2);
s = 2*(a*b + b*c + c*a) - (a^2 + b^2 + c^2);
px1 = (a*(b+c-a)*x1 + b*(c+a-b)*x2 + c*(a+b-c)*x3) / s;
x=px1;
y=(a*(b+c-a)*y1 + b*(c+a-b)*y2 + c*(a+b-c)*y3) / s;
y=y;
ar=a^(0.5);
br=b^(0.5);
cr=c^(0.5);
r1 = ar*br*cr / ((ar+br+cr)*(-ar+br+cr)*(ar-br+cr)*(ar+br-cr))^(0.5);
r=round(r1);

D1=[(x1^(2))+(y1^(2)),y1,1;
    (x2^(2))+(y2^(2)),y2,1;
    (x3^(2))+(y3^(2)),y3,1];

E1=[(x1^(2))+(y1^(2)),x1,1;
    (x2^(2))+(y2^(2)),x2,1;
    (x3^(2))+(y3^(2)),x3,1];

F1=[(x1^(2))+(y1^(2)),x1,y1;
    (x2^(2))+(y2^(2)),x2,y2;
    (x3^(2))+(y3^(2)),x3,y3];

L1=[x1,y1,1;
    x2,y2,1;
    x3,y3,1];

L=det(L1);
D=(-1*det(D1))/L;
E=(det(E1))/L;
F=(-1*det(F1))/L;
fprintf('the radius of the circle is: %f',r);
fprintf('\n the central corrdinat(x,y) of the circle: %f',x,y);
fprintf('\n coefficients of D E F are:');
fprintf('\n D= %f',D);
fprintf('\n E= %f',E);
fprintf('\n F= %f',F);