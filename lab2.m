x = 1:2:9;
y = sin(x)
xx=linspace(1,9,1000);
yy = newtonf(x,y,xx)
yyf = lagrangef(x, y, xx);
figure('Color','w')
fplot(@sin, [1 9])
hold on %чтобы рисовать графики друг на друга
plot(xx, yy, 'r')
plot(x, y, 'bo')
pause;

plot(xx, abs(y-yy), 'b')
