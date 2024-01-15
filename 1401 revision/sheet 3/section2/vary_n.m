% Vary n from 1 to 1000
nValues = 1:1000;

% Initialize an array to store the success rates
successRates = zeros(size(nValues));

% Run simulations for each value of n
for i = 1:length(nValues)
    successRates(i) = simulateAttacks(nValues(i));
end

% Plot the results
figure;
plot(nValues, successRates, 'LineWidth', 2);
xlabel('Number of Simulations (n)');
ylabel('Chance of Success');
title('Chance of Killing Two White Soldiers vs. Number of Simulations');
grid on;
