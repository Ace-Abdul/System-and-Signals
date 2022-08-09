function [A,B,X]  = analysis(arr)
M=length(arr);

A= zeros(1,M);
B= zeros(1,M);
X= zeros(1,M);
for k = 1:M
    for m= 1:M
    A(k) = A(k) + arr(m)* cos( 2 * pi/5 *(k-1)* (m-1));
    B(k) = B(k) + arr(m)* sin( 2 * pi/5 *(k-1)* (m-1));
    X(k) = X(k) + arr(m)* exp( -i *2 * pi/5*(k-1)* (m-1));
    end
end
end