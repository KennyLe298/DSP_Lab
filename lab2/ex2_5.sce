
mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

n = -1:1;
x = [1 3 -2];

xr = x($:-1:1);        // x(-n): the domain is symmetric about 0, so reversing the array directly gives x(-n)
xe = 0.5*(x + xr);      // even component
xo = 0.5*(x - xr);      // odd component

disp("  xe(n) =");  disp(xe);
disp("  xo(n) =");  disp(xo);
disp("  xe + xo (must equal x) =");  disp(xe + xo);

figure(1); clf();
subplot(3,1,1); stemplot(n, x,  "x(n)");
subplot(3,1,2); stemplot(n, xe, "Even component xe(n)");
subplot(3,1,3); stemplot(n, xo, "Odd component xo(n)");
savefig("lab2_ex5");
