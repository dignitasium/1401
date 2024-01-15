% Example scenario
R1 = 5;
R2 = 3;
R3 = 3;
W1 = 4;
W2 = 3;

% Calculate the number of white soldiers killed
numWhiteKilled = attackOutcome(R1, R2, R3, W1, W2);

disp(['Number of white soldiers killed: ', num2str(numWhiteKilled)]);
