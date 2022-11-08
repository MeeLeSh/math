% f(x) = −3𝑥^5 + 4x^4 + 5x^3 - x^2 - 2x + 1; 12 var; Mihailov Alexey
% 3530901/10006

b = 1;
a = -1;
n = 4;
t_k = [0.9061799, 0.5384693, 0, -0.5384693, -0.9061799];
A_k = [0.2369268, 0.4786287, 0.5688889, 0.4786287, 0.2369268];

g_s = 0;

for i=0:1:n
x_k = ((b + a) / 2) + (((b - a) / 2) * t_k(i + 1));
f_x = fun(x_k);
g_s = g_s + (A_k(i + 1) * f_x) + ((b - a).^(2 * n + 3) * (factorial(n + 1)).^4) / ((factorial(2 * (n+1))).^3 * (2 * n + 3));
end

fprintf('result: %f',simpson)

function result = fun(x)
    result = -3*x^5 + 4*x^4 + 5*x^3 - x^2 - 2*x + 1; 
end
