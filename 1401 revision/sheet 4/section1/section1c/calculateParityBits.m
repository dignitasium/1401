function [bitMatrix, parityBits] = calculateParityBits(numbers)
    % Ensure that the input vector is valid
    if ~isvector(numbers) || any(numbers < 0 | numbers > 255)
        error('Input must be a vector of integers between 0 and 255.');
    end

    % Determine the number of bits (8 for each number)
    numBits = 8;

    % Initialize a matrix to store the 8-bit representations
    bitMatrix = zeros(length(numbers), numBits);

    % Convert each number to its 8-bit representation
    for i = 1:length(numbers)
        bitMatrix(i, :) = get8BitRepresentation(numbers(i));
    end

    % Initialize an array to store the parity bits for each column
    parityBits = zeros(1, numBits);

    % Calculate the parity bit for each column
    for bitPosition = 1:numBits
        % Extract the bits from the column
        columnBits = bitMatrix(:, bitPosition);

        % Calculate the parity bit (1 if odd number of ones, 0 otherwise)
        parityBits(bitPosition) = mod(sum(columnBits), 2);
    end

    % Display the 8-bit representation and parity bits for each integer
    disp('8-bit representation and Parity bits for each integer:');
    for i = 1:length(numbers)
        disp(['Integer: ', num2str(numbers(i)), ', 8-bit: ', num2str(bitMatrix(i, :)), ', Parity bits: ', num2str(parityBits)]);
    end
end
