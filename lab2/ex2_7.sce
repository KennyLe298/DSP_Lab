
mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

n1 = 0:3;  x1 = [0 1 3 -2];
n2 = -1:2; x2 = [0 1 2 3];

n   = min(n1(1), n2(1)) : max(n1($), n2($));
x1p = zeros(1, length(n));
x2p = zeros(1, length(n));
x1p(n >= n1(1) & n <= n1($)) = x1;
x2p(n >= n2(1) & n <= n2($)) = x2;

y = x1p .* x2p;      

disp("  y(n) =");  disp(y);

figure(1); clf();
subplot(3,1,1); stemplot(n, x1p, "x1(n)");
subplot(3,1,2); stemplot(n, x2p, "x2(n)");
subplot(3,1,3); stemplot(n, y,   "y(n) = x1(n) . x2(n)");
savefig("lab2_ex7");
