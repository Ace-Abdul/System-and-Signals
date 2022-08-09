function PhoneNum = dtmfdial(KeyNames, fs)
% DTMFDIAL      Create a signal vector of tones which will dial a DTMF
%               telephone system.
%
% usage: PhoneNum = dtmfdial(KeyNames, fs)
%  KeyNames = a vector of characters containing valid key names
%  fs = sampling frequency
%  PhoneNum = signal vector that is the concatenation of DTMF tones
%

%create time vectors
del  = [0  :   1/fs:   0.05-1/fs];
half  = [0   :   1/fs:   0.5-1/fs];

dtmf.Keys = ['1', '2', '3';
             '4', '5', '6';
             '7', '8', '9';
             '*', '0', '#'];
         
dtmf.colTones = ones(4,1)*[1209, 1336, 1477];
dtmf.rowTones = [697; 770; 852; 941]*ones(1,3);
PhoneNum = 0;

for key = KeyNames
    [R,C] = find(dtmf.Keys == key);
    f1 = dtmf.colTones(R,C);
    f2 = dtmf.rowTones(R,C);
    ret = sin(2 * pi * f1 * half) + sin(2 * pi * f2 * half);
    if PhoneNum == 0
        PhoneNum = [ret];
    else
        delay= sin(0*del);
        PhoneNum = [PhoneNum delay ret];
    end
end
end 