% f(x) = −3𝑥^5 + 4x^4 + 5x^3 - x^2 - 2x + 1; 12 var; Mihailov Alexey
% 3530901/10006

a = -1;
b = 1;
n = 4;
t_k = [0.832498, 0.374541, 0, -0.374541, -0.832498];

result = 0;
for i=0:1:n
x_k = (b + a)/2 + (b - a)/2 * t_k(i+1);
f_x = fun(x_k);
result = result + f_x*(b-a)/n;
end

fprintf('result: %f', result);

function result = fun(x)
    result = -3*x^5 + 4*x^4 + 5*x^3 - x^2 - 2*x + 1; 
end
