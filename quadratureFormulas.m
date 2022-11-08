% f(x) = −3𝑥^5 + 4x^4 + 5x^3 - x^2 - 2x + 1; 12 var; Mihailov Alexey
% 3530901/10006

a = -1;
b = 1;
n = 5;
t_k0 = [0.832498, 0.374541, 0, -0.374541, -0.832498];

chebyshev = 0;
for i=1:n
x_k = (b + a)/2 + (b - a)/2 * t_k0(i);
f_x = fun(x_k);
chebyshev = chebyshev + f_x*(b-a)/n;
end

A1 = (b - a) / 6;
A2 = (4 * (b - a)) / 6;
A3 = (b - a) / 6;

simpson = A1 * fun(a) + A2 * fun((a+b)/2) + A3 * fun(b);

t_k1 = [0.9061799, 0.5384693, 0, -0.5384693, -0.9061799];
A_k = [0.2369268, 0.4786287, 0.5688889, 0.4786287, 0.2369268];

g_s = 0;

for i=1:n
x_k = ((b + a) / 2) + (((b - a) / 2) * t_k1(i));
f_x = fun(x_k);
g_s = g_s + (A_k(i) * f_x) + ((b - a).^(2 * n + 3) * (factorial(n + 1)).^4) / ((factorial(2 * (n+1))).^3 * (2 * n + 3));
end


f = @(x) -3*x.^5 + 4*x.^4 + 5*x.^3 - x.^2 - 2*x + 1;

Q = integral(f,a,b);

fprintf('default integral: %f\nchebyshev: %f R = %f\nsimpson: %f R = %f\ngauss: %f R = %f', Q, chebyshev, Q - chebyshev, simpson, Q - simpson, g_s, Q - g_s);

function result = fun(x)
    result = -3*x^5 + 4*x^4 + 5*x^3 - x^2 - 2*x + 1; 
end
