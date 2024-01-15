% Load the audio file
[y, Fs] = audioread('piano_A4.wav');

% Display information about the audio file
disp('Sampling Rate (Fs):');
disp(Fs);
disp('Duration of the Audio (seconds):');
disp(length(y) / Fs);

% Create a variable 't' representing the times at which the original musical note has been sampled
t = 0:1/Fs:(length(y)-1)/Fs;

figure(1);
% Plot y versus t
plot(t, y);
title('Original Musical Note');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;
hold on;
figure(2);
stem(y)
title('Original Musical Note');
xlabel('Time (seconds)');
ylabel('Amplitude');
grid on;

% Create an audioplayer object and play the audio
p = audioplayer(y, Fs);
play(p);
