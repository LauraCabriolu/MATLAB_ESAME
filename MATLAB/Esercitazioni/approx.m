a = input('Inserisci il primo valore: ');
b = input('Inserisci il secondo valore: ');
c = input('Inserisci il terzo valore: ');

fla = round(a, 3, "significant");
flb = round(b, 3, "significant");
flc = round(c, 3, "significant"); 

%d1 = (a+b)+c
d1 = (fla + flb);
fd1 = round(d1,3, "significant");
t1 = fd1 + flc; 
ft1 = round(t1,3,"significant"); 
d1 = ft1;

%d2 = a + (b+c)
d2 = flb + flc;
fd2 = round(d2,3, "significant");
t2 = fd2 + fla;
ft2 = round(t2, 3, "significant"); 
d2 = ft2; 

%errore relativo 
x = a+b+c;
rho1 = abs(d1-x)/abs(x);
rho2 = abs(d2-x)/abs(x); 



