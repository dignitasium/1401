function successRate = simulateAttacks(n)
    % Initialize the count of successful attacks
    successfulAttacks = 0;

    % Number of dice rolls for each attack
    numDice = 5;

    % Repeat the process n times
    for i = 1:n
        % Generate random dice values
        redDice = randi([1, 6], 1, numDice);
        whiteDice = randi([1, 6], 1, numDice);

        % Calculate the number of white soldiers killed using the function from part (a)
        numWhiteKilled = attackOutcome(redDice(1), redDice(2), redDice(3), whiteDice(1), whiteDice(2));

        % Check if two white soldiers are killed
        if numWhiteKilled == 2
            successfulAttacks = successfulAttacks + 1;
        end
    end

    % Calculate the success rate
    successRate = successfulAttacks / n;
end
