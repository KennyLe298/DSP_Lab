
mode(0);

v = [4 -1 7 0 2];
disp("v =");            disp(v);
disp("min(v) =");       disp(min(v));
disp("max(v) =");       disp(max(v));

[m, km] = min(v);
[M, kM] = max(v);
mprintf("  min(v) = %g at index %d,  max(v) = %g at index %d\n", m, km, M, kM);

// bool2s turns a logical condition on the index vector into a signal
n = -3:3;
disp("bool2s(n >= 0) =");   disp(bool2s(n >= 0));
disp("bool2s(n == 0) =");   disp(bool2s(n == 0));

// deff defines a function inline from strings
deff('[y] = sq(x)', 'y = x.^2');
disp("sq(1:4) =");      disp(sq(1:4));

