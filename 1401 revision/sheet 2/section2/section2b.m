clc
clear
Fs = 4000;        % Sampling rate (in Hz)
t = 0:1/Fs:1;      % Time vector from 0 to 1 second
y = sin(999 * 2 * pi * t);  % Sine wave with frequency 999 Hz

% Display information
fprintf('Frequency of the Signal: %d Hz\n', 999);
fprintf('Amplitude of the Signal: %d\n', 1);
fprintf('Sampling Rate: %d Hz\n', Fs);
fprintf('Duration of the Signal: %d seconds\n', 1);

% Create audioplayer object and play the audio
p = audioplayer(y, Fs);
play(p);
