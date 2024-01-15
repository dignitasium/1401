% Initialize the count of cases where two white soldiers are killed
casesWithTwoWhiteKilled = 0;

% Iterate through all possible dice values
for R1 = 1:6
    for R2 = 1:6
        for R3 = 1:6
            for W1 = 1:6
                for W2 = 1:6
                    % Use the function to check if two white soldiers are killed
                    numWhiteKilled = attackOutcome(R1, R2, R3, W1, W2);
                    
                    % Check if two white soldiers are killed
                    if numWhiteKilled == 2
                        casesWithTwoWhiteKilled = casesWithTwoWhiteKilled + 1;
                    end
                end
            end
        end
    end
end

% Calculate the total number of possibilities
totalPossibilities = 6^5;

% Calculate the probability
probabilityTwoWhiteKilled = casesWithTwoWhiteKilled / totalPossibilities;

% Display the result
disp(['Probability of killing two white soldiers: ', num2str(probabilityTwoWhiteKilled)]);
