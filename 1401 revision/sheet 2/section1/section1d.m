% Load the audio file
[y, Fs] = audioread('piano_A4.wav');

% Calculate the Fourier Transform
N = length(y);
frequencies = (0:N-1)*(Fs/N);  % Frequency axis
spectrum = abs(fft(y));

% Plot the spectrum
plot(frequencies, spectrum);
title('Frequency Spectrum of Note A4');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;

% Zoom in to inspect relevant frequencies
xlim([0, 3000]);  % Adjust the range based on your observation
