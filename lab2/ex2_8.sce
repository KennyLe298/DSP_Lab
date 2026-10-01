
mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

n = -2:1;
x = [1 -2 3 6];

// y1(n) = x(-n): folding
// if x has domain [n1,n2] then x(-n) has domain [-n2,-n1]
n_y1 = -n($) : -n(1);
y1   = x($:-1:1);
mprintf("  y1 domain = %d..%d\n", n_y1(1), n_y1($));  disp(y1);

figure(1); clf();
subplot(2,1,1); stemplot(n,    x,  "x(n)");
subplot(2,1,2); stemplot(n_y1, y1, "y1(n) = x(-n)");
savefig("lab2_ex8_y1");

// y2(n) = x(n+3): advance by 3 
n_y2 = n(1)-3 : n($)-3;
y2   = x;
mprintf("  y2 domain = %d..%d\n", n_y2(1), n_y2($));  disp(y2);

figure(2); clf();
subplot(2,1,1); stemplot(n,    x,  "x(n)");
subplot(2,1,2); stemplot(n_y2, y2, "y2(n) = x(n+3)");
savefig("lab2_ex8_y2");

// y3(n) = 2*x(-n-2): fold, shift, then scale by 2 
// solving n1 <= -n-2 <= n2 gives the domain [-n2-2, -n1-2]
n_y3 = (-n($)-2) : (-n(1)-2);
y3   = 2*x($:-1:1);
mprintf("  y3 domain = %d..%d\n", n_y3(1), n_y3($));  disp(y3);

figure(3); clf();
subplot(2,1,1); stemplot(n,    x,  "x(n)");
subplot(2,1,2); stemplot(n_y3, y3, "y3(n) = 2x(-n-2)");
savefig("lab2_ex8_y3");
