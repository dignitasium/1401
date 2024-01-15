t = 0:1/44100:1;
f = 1000;
y = sin(2*pi*f*t);
p = audioplayer(y,44100);
play(p)
