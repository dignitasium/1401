% Replace 'your_wave_file.wav' with the actual name of your wave file
[y, fs] = audioread('fluteSA.wav');

% Calculate the time vector
t = (0:length(y)-1) / fs;

% Plot the wave file versus time
figure;
plot(t, y);
xlabel('Time (seconds)');
ylabel('Amplitude');
title('Wave File versus Time');
% Vary n from 1 to 8
for n = 1:8
    % Quantize the signal using an n-bit quantizer
    quantized_signal = round(y * (2^(n-1))) / (2^(n-1));

    % Save the quantized signal as a new wave file
    new_wave_file_name = ['quantized_n', num2str(n), '.wav'];
    audiowrite(new_wave_file_name, quantized_signal, fs);

    % Listen to the generated wave file (uncomment the line below if you have the audioplayer function)
    sound(quantized_signal, fs);

    disp(['Quantization with n = ', num2str(n), ' completed.']);
end
