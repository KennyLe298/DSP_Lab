
mode(0);
// (a) add 1 to every component of x = 1:4
x = 1:4;
vec_a = x + 1;
disp("(a) x + 1 =");  disp(vec_a);

// (b) element-wise product of x = 1:4 and y = 5:8
y = 5:8;
vec_b = x .* y;
disp("(b) x .* y =");  disp(vec_b);

// (c) sine of 10 points linearly spaced in [0, pi]
z = linspace(0, %pi, 10);
vec_c = sin(z);
disp("(c) sin(z) =");  
disp(vec_c);

