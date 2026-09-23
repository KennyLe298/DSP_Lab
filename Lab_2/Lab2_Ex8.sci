// x(n) = {1, -2, 3^, 6}  ->  n = -2:1
n = -2:1;
x = [1 -2 3 6];

// y1(n) = x(-n)  : folding 
// if x has domain [n1,n2], then x(-n) has domain [-n2,-n1]
n_y1 = -n($) : -n(1);
y1   = x($:-1:1);

figure(1); clf();
subplot(2,1,1);
plot2d3(n, x);
title('x(n)'); xlabel('n'); ylabel('Amplitude');
subplot(2,1,2);
plot2d3(n_y1, y1);
title('y1(n) = x(-n)'); xlabel('n'); ylabel('Amplitude');

// y2(n) = x(n+3)  : advance by 3 
// domain shifts left by 3, sample values are unchanged
n_y2 = n(1)-3 : n($)-3;
y2   = x;

figure(2); clf();
subplot(2,1,1);
plot2d3(n, x);
title('x(n)'); xlabel('n'); ylabel('Amplitude');
subplot(2,1,2);
plot2d3(n_y2, y2);
title('y2(n) = x(n+3)'); xlabel('n'); ylabel('Amplitude');

// y3(n) = 2*x(-n-2)  : fold, then shift, then scale by 2 
// solving n1 <= -n-2 <= n2  =>  domain is [-n2-2, -n1-2]
n_y3 = (-n($)-2) : (-n(1)-2);
y3   = 2*x($:-1:1);

figure(3); clf();
subplot(2,1,1);
plot2d3(n, x);
title('x(n)'); xlabel('n'); ylabel('Amplitude');
subplot(2,1,2);
plot2d3(n_y3, y3);
title('y3(n) = 2x(-n-2)'); xlabel('n'); ylabel('Amplitude');
