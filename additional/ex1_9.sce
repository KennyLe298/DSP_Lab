

mode(0);
exec("common/stemplot.sci", -1);
exec("common/savefig.sci", -1);

Fs = 600;
t  = 0 : 1/60000 : 0.025;     
n  = 0 : 15;

xa = sin(480*%pi*t) + 3*sin(720*%pi*t);     
ya = -2*sin(480*%pi*t);                     
xn = -2*sin(0.8*%pi*n);                    

figure(1); clf();

subplot(3,1,1);
plot(t, xa);
title("xa(t) = sin(480 pi t) + 3sin(720 pi t)");
xlabel("t (s)"); ylabel("Amplitude"); xgrid();

subplot(3,1,2);
stemplot(n, xn, "x(n) = -2sin(0.8 pi n), Fs = 600 Hz");

subplot(3,1,3);
plot(t, xa, "b");                            
plot(t, ya, "r");                          
plot2d(n/Fs, xn, -9, "000");                 
title("ya(t) = -2sin(480 pi t) passes through every sample of xa(t)");
xlabel("t (s)"); ylabel("Amplitude"); xgrid();

savefig("add_ex1_9");

// check that sampling xa  give -2 sin(0.8 pi n)
mprintf("  max|xa(n/Fs) - (-2 sin(0.8 pi n))| = %e\n", ..
        max(abs(sin(480*%pi*n/Fs) + 3*sin(720*%pi*n/Fs) - xn)));
