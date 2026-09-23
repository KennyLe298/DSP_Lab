// x1(n) = {0^, 1, 3, -2}  ->  n1 = 0:3
// x2(n) = {0, 1^, 2, 3}   ->  n2 = -1:2
n1 = 0:3;  x1 = [0 1 3 -2];
n2 = -1:2; x2 = [0 1 2 3];

n   = min(n1(1),n2(1)) : max(n1($),n2($));
x1p = zeros(1,length(n));
x2p = zeros(1,length(n));
x1p(n>=n1(1) & n<=n1($)) = x1;
x2p(n>=n2(1) & n<=n2($)) = x2;

y = x1p + x2p;

figure(1); clf();

subplot(3,1,1);
plot2d3(n, x1p);
title('x1(n)');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,2);
plot2d3(n, x2p);
title('x2(n)');
xlabel('n'); ylabel('Amplitude');

subplot(3,1,3);
plot2d3(n, y);
title('y(n) = x1(n) + x2(n)');
xlabel('n'); ylabel('Amplitude');
