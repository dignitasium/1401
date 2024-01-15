% Example usage
vectorOfNumbers = [254 12];
checksumResult = calculateChecksum(vectorOfNumbers);

fprintf('Vector: %s\n', mat2str(vectorOfNumbers));
fprintf('Checksum (Two''s Complement): %d\n', checksumResult);