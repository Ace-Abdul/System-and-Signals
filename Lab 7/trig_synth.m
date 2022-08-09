function x = trig_synth(A,B)
M = length(A);
x = zeros(1,M);

for m = 1:M
    for k= 1:M
    x(m) = x(m)+ A(k) * cos( 2 * pi/M *(k-1)* (m-1)) + ...
                 B(k) * sin( 2 * pi/M *(k-1)* (m-1));
    end
end
x= x/M;
end