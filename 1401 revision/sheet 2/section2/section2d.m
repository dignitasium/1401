[y, Fs] = audioread('Beethoven192k.wav');
n = 2;
p= audioplayer(y(1:2:length(y)),Fs/n); play(p)