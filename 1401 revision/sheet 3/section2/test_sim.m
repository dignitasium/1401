% Set the number of simulations
nSimulations = 10000;

% Run the simulations
successRate = simulateAttacks(nSimulations);

% Display the result
disp(['Chance of killing two white soldiers: ', num2str(successRate)]);
