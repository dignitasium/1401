function p = parity(msg)
p = msg(1);

for i = 2:length(msg)
    p = xor(p,msg(i));
end