
mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

n  = -5:5;
ur = n .* bool2s(n >= 0);     // ur(n) = n for n >= 0, 0 otherwise

disp("  ur(n) for n = -5:5:");  disp(ur);

figure(1); clf();
stemplot(n, ur, "Unit ramp ur(n)");
savefig("lab2_ex4");
