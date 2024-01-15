function quantizedValue = ADquant(r, A, B, n)
    % Quantize the given sample value 'r' based on quantization parameters
    
    % Generate the boundary vector using ADBoundary function
    boundaryVector = ADBoundary(A, B, n);
    
    % Find the midpoints using ADmid function
    midpoints = ADmid(boundaryVector);
    
    % Find the index of the band where 'r' lies
    bandIndex = find(r >= boundaryVector(1:end-1) & r < boundaryVector(2:end));
    
    % If 'r' is outside the defined range, return an error or handle it as needed
    if isempty(bandIndex)
        error('Sample value is outside the specified quantization range.');
    end
    
    % Return the quantized value (middle point in the corresponding band)
    quantizedValue = midpoints(bandIndex);
end
