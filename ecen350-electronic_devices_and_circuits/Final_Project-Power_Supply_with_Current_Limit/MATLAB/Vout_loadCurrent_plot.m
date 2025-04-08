% Given data
Vout = [9, 9, 9, 9, 8.69, 4.27, 2.48]; % Voltage (V)
Iload = [0, 56.3, 110, 164, 180, 194, 195]; % Current (mA)

% Create the plot
figure;
plot(Iload, Vout, '-o', 'LineWidth', 2, 'MarkerSize', 3, 'MarkerFaceColor', 'r');

% Labels and title
xlabel('Load Current (mA)');
ylabel('Output Voltage (V)');
title('Voltage vs. Load Current - Brodric Young');
grid on;

% Improve appearance
set(gca, 'FontSize', 12);
xlim([0 210]);
ylim([0 10]);

% Show the plot
hold off;
