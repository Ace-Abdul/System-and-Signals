%% m by Ace Abdulrahman for ECE 280 Lab 1
% The m function takes in 4 parameters Amplitude, let, measure, and octave
% Amplitude: used to determine the amplitude of the sound
% let: used for letter notation to determine the n value that affects pitch
% measure: used to determine the measure by taking the inverse of value passed 
% (4 passed as measure would create a note of measure 1/4) 
% octave: used to determine the octave of the note.

function [output] = m(Amplitude,let, measure,octave)
%% Declaring variables
fs = 8000;      % Sampling frequency
n=0;            % Declaring n for switch
tpm = 1.45;     % Tempo variable, some beat per minute values create round off error so I round it here
meas  = [0  :   1/fs:   tpm/measure-1/fs];  % meas used for the note measure

%% ADSR Effect
A=linspace(0.8,1,0.02*length(meas));        % Rapid attack
D=linspace(1,0.8,0.2*length(meas));         % Decline
S=linspace(0.8,0.8,0.78*length(meas));      % SUSTAINANCE
% R=linspace(1,0,0.98*length(meas));        % No release

ADSR=[A D S];                               % No R

%% Switch flow to determine n value used in note
switch let
    case 'A'
        n=0;
    case 'B'
        n=2;
    case 'C'
        n=3;
    case 'D'
        n=5;
    case 'E'
        n=7;
    case 'F#'
        n=9;
    case 'G'
        n=10;
    otherwise
        n=0;
end

%% Applying Harmonics to Output
output =  1 * sin(2 * pi * 1 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
        0.1 * sin(2 * pi * 2 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.35 * sin(2 * pi * 3 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.06 * sin(2 * pi * 4 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.05 * sin(2 * pi * 5 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.04 * sin(2 * pi * 6 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.00 * sin(2 * pi * 7 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.02 * sin(2 * pi * 8 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.01 * sin(2 * pi * 9 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.01 * sin(2 * pi * 10 * 220 * 2^( (octave-3) + n/12 ) * meas)+ ...
       0.00 * sin(2 * pi * 11 * 220 * 2^( (octave-3) + n/12 ) * meas)+ ...
       0.01 * sin(2 * pi * 12 * 220 * 2^( (octave-3) + n/12 ) * meas)+ ...
       0.015 * sin(2 * pi *13 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.00 * sin(2 * pi * 14 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.0 * sin(2 * pi *15 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.0 * sin(2 * pi *16 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.0 * sin(2 * pi *17 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.0 * sin(2 * pi *18 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.0 * sin(2 * pi *19 * 220 * 2^( (octave-3) + n/12 ) * meas) + ...
       0.0 * sin(2 * pi *20 * 220 * 2^( (octave-3) + n/12 ) * meas);
   
%% Applying ADSR to output
output= output.*ADSR;
end