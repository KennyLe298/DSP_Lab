
mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

n = -5:5;
msignal = bool2s(n == 0);

disp("  delta(n) for n = -5:5:");  disp(msignal);

figure(1); clf();
stemplot(n, msignal, "Unit impulse delta(n)");
savefig("lab2_ex3");
