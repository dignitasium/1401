function bitRepresentation = get8BitRepresentation(number)
    % Ensure that the input is within the valid range
    if number < 0 || number > 255
        error('Input must be an integer between 0 and 255.');
    end

    % Initialize the array to store the 8-bit representation
    bitRepresentation = zeros(1, 8);

    % Extract each bit using bitget
    for bitPosition = 1:8
        bitRepresentation(bitPosition) = bitget(number, 9 - bitPosition);
    end
end