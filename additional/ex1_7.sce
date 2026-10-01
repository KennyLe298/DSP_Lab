
mode(0);
exec("common/savefig.sci", -1);

Fs = 8000;
n  = 0:16;
t  = 0 : 1/800000 : 16/Fs;      // dense grid for analog axis

figure(1); clf();

// (b) the true 5 kHz tone and its 3 kHz alias share every sample
subplot(2,1,1);
plot(t, cos(2*%pi*5000*t), "r");                 
plot(t, cos(2*%pi*3000*t), "b");                  
plot2d(n/Fs, cos(2*%pi*5000*n/Fs), -9, "000");   
title("(b) 5 kHz sampled at 8 kHz is indistinguishable from 3 kHz");
xlabel("t (s)"); ylabel("Amplitude"); xgrid();

// (c) 9 kHz  and its 1 kHz alias 
subplot(2,1,2);
plot(t, cos(2*%pi*9000*t), "r");
plot(t, cos(2*%pi*1000*t), "b");
plot2d(n/Fs, cos(2*%pi*9000*n/Fs), -9, "000");
title("(c) 9 kHz sampled at 8 kHz is indistinguishable from 1 kHz");
xlabel("t (s)"); ylabel("Amplitude"); xgrid();

savefig("add_ex1_7");

mprintf("  (b) max|cos(2pi*5000 n/Fs) - cos(2pi*3000 n/Fs)| = %e\n", ..
        max(abs(cos(2*%pi*5000*n/Fs) - cos(2*%pi*3000*n/Fs))));
mprintf("  (c) max|cos(2pi*9000 n/Fs) - cos(2pi*1000 n/Fs)| = %e\n", ..
        max(abs(cos(2*%pi*9000*n/Fs) - cos(2*%pi*1000*n/Fs))));
