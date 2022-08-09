%ECE 280 Lab 1 Charlotte Roh, adapted by Evelyn Putri

%initialize sampling frequency
fs = 8000;

%create array of note frequencies
note = zeros(1,12);
for i = 0:11
    note(i+1) = 220*(2^(i/12));
end
A = note(1);
Asharp = note(2);
B = note(3);
C = note(4);
Csharp = note(5);
D = note(6);
Dsharp = note(7);
E = note(8);
F = note(9);
Fsharp = note(10);
G = note(11);
Gsharp = note(12);

tpm=4*60/120;
%create time vectors
eith  = [0  :   1/fs:   tpm*0.125-1/fs];
quart = [0  :   1/fs:   tpm*0.25-1/fs]; %[start:increment:end]
half  = [0   :   1/fs:   tpm*0.5-1/fs];
whole = [0  :   1/fs:   tpm*1-1/fs];

%play quarter note A
y = cos(2 * pi * B * quarter); %cos(2 * pi * frequency * time)
% sound(y,fs);
Be = 4*cos(2*pi* 220*2^(2/12) * eith);
Bq = 4*cos(2*pi* 220*2^(2/12) * quart);
Bh = 4*cos(2*pi* 220*2^(2/12) * half);
Aq = 4*cos(2*pi* 220*2^(0/12) * quart);
Gq = 4*cos(2*pi* 220*2^(-2/12)* quart );
Ah = 4*cos(2*pi* 220*2^(0/12) * half);
Dq = 4*cos(2*pi* 220*2^(5/12) * quart);
Dh = 4*cos(2*pi* 220*2^(5/12) * half);
Gw = 4*cos(2*pi* 220*2^(octave*(-2/12))* whole);

 
 
N1=[Bq, Aq, Gq, Aq,    Bq, Bq, Bh,     Aq,Aq,Ah,       Bq,Dq, Dh,...
    Bq, Aq, Gq, Aq,    Bq, Bq, Bq,Bq,  Aq,Aq,Bq,Aq,    Gw,...
    Bq, Aq, Gq, Aq,    Bq, Bq, Bh,     Aq,Aq,Ah,       Bq,Dq, Dh,...
    Bq, Aq, Gq, Aq,    Bq, Bq, Bq,Bq,  Aq,Aq,Bq,Aq,    Gw];
sound(N1,fs);


 

 
 
