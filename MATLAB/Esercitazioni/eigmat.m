clear,clc
n = input('Inserire una dimensione n: ');
S = randi([10,20], n);
disp(S); 

if issymmetric(S) == 0 %se la matrice non e' simmetrica
    %forziamo la simmetria
    fprintf('Matrice non simmetrica, forziamo la simmetria'); 
    S = (S+S')/2;   
end

d = eig(S); %calcolo gli autovalori e li salvo in un vettore

norma1 = norm(d,1);
norma2 = norm(d,2);
normainf = norm(d,"inf"); 
