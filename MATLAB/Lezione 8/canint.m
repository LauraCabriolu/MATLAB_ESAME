function yy = canint(x,y,xx)
%polinomio interpolare nella forma canonica y = Xa

x = x(:);
y = y(:);

n = length(x);

if length(x) ~= length(y)
    error('x e y hanno lunghezza diversa')
end

X = zeros(n); %creo una matrice di zeri
%riempio la matrice di Vandermonde
for j = 1:n
    X(:,j) = x.^(j-1); %per ogni elemento di una colonna, inserisce la corrispondente posizione nel vettore elevata per j-1
end

a = X\y; %risolvo il sistema lineare y = aX

%p = a0*x^0 + a1*x^1 + ... + an*x^n teoria
%p = a(1)*x^0 + a(2)*x^1 + ... + a(n)*x^(n-1) matlab

for i = 1:length(xx)
s = 0;
    for k = 1:n
    s = s + a(k)*xx(i)^(k-1); %svolgo la sommatoria 
    end
yy(i) = s;
end

plot(xx,yy,'b',x,y,'ro')
