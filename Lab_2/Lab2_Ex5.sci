// x(n) = {1, 3^, -2}  ->  n=-1:1, with x(-1)=1, x(0)=3, x(1)=-2
n = -1:1;
x = [1 3 -2];

xr = x($:-1:1);        // x(-n) domain -1:1 is symmetric -> reverse 
xe = 0.5*(x + xr);      // even 
xo = 0.5*(x - xr);      // odd 

figure(1); clf();

subplot(3,1,1);
plot2d3(n, x);
title('x(n)');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,2);
plot2d3(n, xe);
title('Even component xe(n)');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,3);
plot2d3(n, xo);
title('Odd component xo(n)');
xlabel('n'); ylabel('Amplitude');
