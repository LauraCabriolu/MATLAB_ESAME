%esercizio n.4
function [x] = sist_triu2(U,b)

n = size(U,1); %calcolo la dimensione della matrice U 

if abs(det(U)) > 1e-10 && istriu(U) == 1 %controllo se la matrice è invertibile e triangolare superiore
    %la matrice è invertibile e triangolare superiore

    x(n) = b(n)/U(n,n);
    for i=n-1:-1:1
        sum = 0; %inizializzo la variabile per il calcolo della sommatoria
        for j = i+1:n
            sum = sum + (U(i,j) * x(j));
        end

        x(i) = 1/U(i,i) * (b(i) - sum); 
    end
      
else
   warning('la matrice non e'' invertibile o triangolare superiore');
end