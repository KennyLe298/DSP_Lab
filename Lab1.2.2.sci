A  = 3;                 
w0 = 100*%pi;           
f0 = w0/(2*%pi);        
T0 = 1/f0;              
 
mprintf('Analog frequency f0 = %g Hz\n', f0);
mprintf('Analog period    T0 = %g s\n', T0);


Fs_plot = 300;    
              
t  = 0 : 1/Fs_plot : 5*T0;

xa = A*sin(w0*t);

plot2d3(t,xa)

