A = randi([3,10],3);
x = randi([3,10],3,1);
disp(A); 
disp(x); 

for j=1:length(A)
A(:,j) = x.^(1); 
disp(x.^(1));
disp(A);  
pause;
end