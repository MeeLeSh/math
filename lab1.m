clear all;
a = -pi/2;
b = pi/2;
k = 1000;
h = (b - a)/(k - 1);
x = a:h:b; % массив точек с шагом h
y = sin(x); 
XN(1) = x(1);
YN(1) = y(1);
m = 15;
for i = 1:m,
    W = vander(XN); % матрица вандермонда
    A = inv(W) * YN'; % inv - обратная матрица, A - транспонированная матрица
    P = polyval(A, x) % строит полином
    pogr(i) = max(abs(y-P)); % погрешность 
    hx = (b - a) / i;
    for j=1:i,
        XN(j+1) = XN(j) + hx;
    end
    YN = sin(XN); % + rand(00001)
    plot(x, abs(y-P), 'b');
    pause(1.5)
end
plot(log10(pogr), 'r');

% interval [-pi/2; pi/2]
% interval [-pi; pi/2]
% interval [-3*pi; 3*pi]
% amout of dots 15 and 30
% level of rand() 0.1, 0.01, 0.001
