% Example usage of ADBoundary
A = 0;
B = 10;
n = 3;
boundaryVector = ADBoundary(A, B, n);

% Display the boundary vector
disp('Boundary Vector:');
disp(boundaryVector);

% Example usage of ADmid
midpoints = ADmid(boundaryVector);

% Display the midpoints
disp('Midpoints:');
disp(midpoints);

% Sample value
r = 7.2;

% Quantize the sample value
quantizedValue = ADquant(r, A, B, n);

% Display the result
disp(['Sample value: ', num2str(r)]);
disp(['Quantized value: ', num2str(quantizedValue)]);

