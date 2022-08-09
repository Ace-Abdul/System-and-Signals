function out = sig(f0,A, fs)
time  = [0   :   1/fs:   0.001+1/fs];
out = sin(2 * pi * f0 * time)
end