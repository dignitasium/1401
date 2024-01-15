function checksum = calculateChecksum(vector)
    % Ensure all elements are within the valid range
    if any(vector < 0 | vector > 255)
        error('All numbers in the vector must be between 0 and 255 (inclusive)');
    end

    % Calculate the checksum using two's complement
    sumValue = sum(vector);
    checksum = mod(256 - mod(sumValue, 256), 256);
end


