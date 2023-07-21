function [x1] = sist_triu(U,b)

if abs(det(U)) < 1e-15  %se la matrice non è invertibile 
    error('matrice non invertibile');   
end  
if not(istriu(U)) %se la matrice non è triangolare superiore
    error('matrice non e'' triangolare superiore');   
end    

n = size(U,1);

x(n) = b(n)/U(n,n);


for i=n-1:-1:1
    s = 0;
    for j=i+1:n
        s = s + U(i,j)*x(j);
    end
    x(i) = 1/U(i,i) * (b(i) - s); 
end    

x1 = x; 


