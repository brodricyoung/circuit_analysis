% c=load current values in mA
current = [0, 12.0, 23.8, 58.5, 110, 138, 159, 163, 161, 162]; 

% sw12V voltage in Volts
sw12v = [12, 12, 11.9, 11.7, 11, 10.6, 10.5, 8.95, 5.3, 3.56];

figure;
plot(current, sw12v, '-o', 'LineWidth', 1.5, 'MarkerSize', 5); % Use plot() for a linear scale

% Adjust axes limits
ylim([0 15]);
xlim([0 200]);

% Labels and title
xlabel('Load Current (mA)');
ylabel('SW12V (V)');
title('Switched Output Voltage versus Load Current – Brodric Young');

% Grid for better readability
grid on;
