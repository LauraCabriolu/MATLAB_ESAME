clear,clc
n = input('Inserire un numero: ');
R = rand(n);
x = diag(R); 
D = diag(x);

U = triu(R); %estrae la parte triangolare superiore di R
L = tril(R); %estrae la parte triangolare inferiore di R

if isdiag(D) == 1
    fprintf('D e'' una matrice diagonale'); 
end   

if istriu(U) == 1
    fprintf('U e'' una matrice triangolare superiore');
end    
 
if istril(L) == 1
   fprintf('L e'' una matrice triangolare inferiore');
end