clc;
clear;
close all;

disp('===================================================');
disp('      OVERCURRENT RELAY SETTING CALCULATOR        ');
disp('===================================================');

%% ================= USER INPUT SECTION =================

CT_primary = input('Enter CT Primary Current (A): ');
CT_secondary = input('Enter CT Secondary Current (A): ');
plug_setting_percent = input('Enter Plug Setting (%): ');
TMS = input('Enter Time Multiplier Setting (TMS): ');

disp('Select Relay Characteristic:');
disp('1 - Standard Inverse');
disp('2 - Very Inverse');
disp('3 - Extremely Inverse');
choice = input('Enter choice (1/2/3): ');

%% ================= BASIC CALCULATIONS =================

CT_ratio = CT_primary / CT_secondary;

pickup_current_secondary = (plug_setting_percent/100) * CT_secondary;
pickup_current_primary = pickup_current_secondary * CT_ratio;

fprintf('\nPickup Current (Primary) = %.2f A\n', pickup_current_primary);

%% Fault current range (Primary side)
fault_current_primary = pickup_current_primary : ...
                        0.2*pickup_current_primary : ...
                        10*pickup_current_primary;

%% Convert fault current to secondary
fault_current_secondary = fault_current_primary / CT_ratio;

%% PSM Calculation
PSM = fault_current_secondary ./ pickup_current_secondary;

%% ================= RELAY CHARACTERISTICS =================

switch choice
    case 1   % Standard Inverse
        K = 0.14; alpha = 0.02;
        relay_type = 'Standard Inverse';
    case 2   % Very Inverse
        K = 13.5; alpha = 1;
        relay_type = 'Very Inverse';
    case 3   % Extremely Inverse
        K = 80; alpha = 2;
        relay_type = 'Extremely Inverse';
    otherwise
        error('Invalid selection');
end

%% Trip Time Calculation
trip_time = (K .* TMS) ./ ((PSM.^alpha) - 1);

%% Remove invalid/negative values
trip_time(PSM <= 1) = NaN;

%% ================= DISPLAY SAMPLE RESULTS =================

disp(' ');
disp('--------------- SAMPLE RESULTS ----------------');

for i = 2:5
    fprintf('Fault Current = %.2f A, Trip Time = %.3f sec\n', ...
        fault_current_primary(i), trip_time(i));
end

%% ================= MAX & MIN TIME =================

max_time = max(trip_time);
min_time = min(trip_time(~isnan(trip_time)));

fprintf('\nMaximum Operating Time = %.3f sec\n', max_time);
fprintf('Minimum Operating Time = %.3f sec\n', min_time);

%% ================= PLOT CHARACTERISTIC =================

figure;
plot(fault_current_primary, trip_time, 'LineWidth', 2);
grid on;
xlabel('Fault Current (Primary A)');
ylabel('Operating Time (seconds)');
title(['IDMT Relay Characteristic - ', relay_type]);
ylim([0 max_time*1.1]);

%% ================= MULTI-TMS COMPARISON =================

TMS_values = [0.05 0.1 0.2];

figure;
hold on;
for i = 1:length(TMS_values)
    t = (K .* TMS_values(i)) ./ ((PSM.^alpha) - 1);
    t(PSM <= 1) = NaN;
    plot(fault_current_primary, t, 'LineWidth', 2);
end
grid on;
xlabel('Fault Current (Primary A)');
ylabel('Operating Time (seconds)');
title(['Relay Coordination Study - ', relay_type]);
legend('TMS = 0.05','TMS = 0.1','TMS = 0.2');