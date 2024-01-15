address = [
0 1 1 0;
0 1 1 1;
0 0 1 0;
]


links = [1 2 3];

DA = [0 1 1 0];

for i = 1:4
    if sum(xor(DA, address(i,:))) == 0
        output_link = links(i);
    end
end

output_link