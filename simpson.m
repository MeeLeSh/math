% f(x) = −3𝑥^5 + 4x^4 + 5x^3 - x^2 - 2x + 1; 12 var; Mihailov Alexey
% 3530901/10006

b = 1;
a = -1;

A1 = (b - a) / 6;
A2 = (4 * (b - a)) / 6;
A3 = (b - a) / 6;

simpson = A1 * fun(a) + A2 * fun((a+b)/2) + A3 * fun(b); % ответ

fprintf('result: %f',simpson)

function result = fun(x)
    result = -3*x^5 + 4*x^4 + 5*x^3 - x^2 - 2*x + 1; 
end
