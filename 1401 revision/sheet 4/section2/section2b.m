address = [
1 1 1 1 1 1 1 1;
1 1 0 0 0 0 1 0;
1 0 0 0 0 0 0 0;
0 1 1 1 1 1 1 1;
]


links = [4 2 3 1];

DA = [1 1 0 0 0 0 1 0];

for i = 1:4
    if sum(xor(DA, address(i,:))) == 0
        output_link = links(i);
    end
end

output_link