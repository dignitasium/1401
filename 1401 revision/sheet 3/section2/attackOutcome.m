function numWhiteKilled = attackOutcome(R1, R2, R3, W1, W2)
    % Sort the red and white dice in descending order
    redDice = sort([R1, R2, R3], 'descend');
    whiteDice = sort([W1, W2], 'descend');

    % Initialize the count of white soldiers killed
    numWhiteKilled = 0;

    % Compare each red die with the corresponding white die
    for i = 1:min(length(redDice), length(whiteDice))
        if redDice(i) > whiteDice(i)
            % Attacker kills a white soldier
            numWhiteKilled = numWhiteKilled + 1;
        end
    end
end
