
mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

n = 0:47;

// rational case: T/Tp = 1/8  ->  periodic, N = 8 samples, k = 1
x_rat = cos(2*%pi*(1/8)*n);

// irrational case: T/Tp = 1/(4*pi)  ->  never repeats
x_irr = cos(2*%pi*(1/(4*%pi))*n);

figure(1); clf();
subplot(2,1,1);
stemplot(n, x_rat, "T/Tp = 1/8 (rational): repeats every N = 8 samples");
subplot(2,1,2);
stemplot(n, x_irr, "T/Tp = 1/(4pi) (irrational): never repeats");
savefig("add_ex1_6");

mprintf("  rational   case: max|x(n)-x(n+8)| = %e\n", max(abs(x_rat(1:8) - x_rat(9:16))));
mprintf("  irrational case: max|x(n)-x(n+8)| = %e\n", max(abs(x_irr(1:8) - x_irr(9:16))));
