
Fs = 300;                          
Ts = 1/Fs;  
 
Fmoi=50/300;

Tmoi=1/Fmoi;


//discrete

n=0:5*Tmoi;

xn=3*sin(2*%pi*Fmoi*n);

delta = 0.1;

xq = delta*floor(xn/delta)

plot(n,xq,"*")

