%Tab = readtable('simplified_PRT_measurement_circuitry.txt'); % Read in LTspice table data.
%Tab1 = Tab.Variables;  % Extract numeric data, eliminating column headings.
%vt = Tab1(:, 2); % Form a column vector of V(vout) data.
%vout = vt'; % Transpose V(vout) data to obtain a row vector.

vplus = ((vout - 2.5) / 7.91) + 2.5;
rprt = ((vplus .* 1000) ./ (5 - vplus));
insqrroot = 1000^2 .* 0.0039083^2 - 4 .* 1000 .* (-5.775 .* 10^(-7)) .* (1000 - rprt);
TC = (-1000 .* 0.0039083 + sqrt(insqrroot)) ./ (2 .* 1000 .* (-5.775 .* 10^(-7)));
%resultTable = table(vout', vplus',rprt', tc', 'VariableNames', {'vout', 'vplus','rprt', 'tc'});

t = 0:0.5:24; % Hourly time vector.
TF = (TC .* (9 ./ 5)) + 32;

%yyaxis left
%plot(t, TF, 'b-'), grid on; % Temperature in Fahrenheit. 
%xlim([0, 24]);
%xticks([0, 6, 12, 18, 24]);
%xlabel('Hours past Midnight');
%ylabel('Temperature ˚F');
%yyaxis right
%plot(t, TC), grid on;  % Temperature in Celsius.
%ylabel('Temperature ˚C');

%legend({'˚F', '˚C'}, 'Location','best');
%title('Diurnal Temperature Variation – Brodric Young');

vout1 = 3.44241200000000;
TC1 = 25.7054746959535;
TF1 = 78.2698544527163;

m = 14;
vres = 5 ./ 2^m;
vout = vout1 + vres;

TC_resolution = TC - TC1;
TF_resolution = TF - TF1;