a = input('Inserisci il valore di a:');
b = input('Inserisci il valore di b:');
c = input('Inserisci il valore di c:');


fla = round(a,4,'significant');
flb = round(b,4,'significant');
flc = round(c,4,'significant');
%calcolo (a+b)-c
d = fla+flb;
fld = round(d,4,'significant');
t1 = fld - flc;
flt1 = round(t1,4,'significant');
%calcolo a+(b-c)
e = flb - flc;
fle = round(e,4,'significant');
t2 = fla + fle;
flt2 = round(t2,4,'significant');

x = a+b-c;
%errori relativi rispetto a x valore vero
rho1 = abs(flt1-x)/abs(x);
rho2 = abs(flt2-x)/abs(x);