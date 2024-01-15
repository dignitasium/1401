function midpoints = ADmid(b)
    % Calculate the midpoints of each band in the quantizer
    midpoints = (b(1:end-1) + b(2:end)) / 2;
end