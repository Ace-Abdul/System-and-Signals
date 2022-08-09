function x = exp_synth(X)
M = length(X);
x = zeros(1,M);

for m = 1:M
    for k= 1:M
    x(m) = x(m) + X(k) * exp(i* 2 * pi/M *(k-1)* (m-1));
    end
end
x= x/M;
end