clc;clear;close;
filename1 = "pt1000-log.csv"
filename2 = "ds18b20-log.csv"
data1 = dlmread (filename1, ',');
data2 = dlmread (filename2, ',');

%%
% convert ms-ticks to hours
tick1 = data1([1:end], 2) / 1000 / 60 / 60; 
tick2 = data2([1:end], 2) / 1000 / 60 / 60 ;

%%
% Daten sind in Grad Celsius * 1000 (Festkomma)
temperature_pt1000_cold = data1([1:end], 6) / 1000; 
temperature_pt1000_warm = data1([1:end], 11) / 1000;

temperature_ds18b20_cold = data2([1:end], 4) / 1000;
temperature_ds18b20_warm = data2([1:end], 7) / 1000;

%%
% Die Daten werden gemittelt bzw. geglaettet um eine besseren Analyse zu
N = 8;                                                                      % Gleitender Mittelwert f. Daten Analyse
h_mean  = ones(1,N)*1/N;
temperature_pt1000_cold_lp = filter(h_mean, 1, temperature_pt1000_cold);
temperature_pt1000_warm_lp = filter(h_mean, 1, temperature_pt1000_warm);

figure()
hold on
#plot(tick1, temperature_pt1000_cold)
plot(tick1, temperature_pt1000_cold_lp)
plot(tick2, temperature_ds18b20_cold)
title(['from cold to room temperature'])
ylabel('T / °C')
xlabel('t / h')
legend('PT1000',  'DS18B20', 'Location', 'NorthWest')


figure()
hold on
#plot(tick1, temperature_pt1000_warm)
plot(tick1, temperature_pt1000_warm_lp)
plot(tick2, temperature_ds18b20_warm)
title(['from hot to room temperature'])
ylabel('T / °C')
xlabel('t / h')
legend('PT1000',  'DS18B20', 'Location', 'NorthWest')

%%
% Error, cold-series has less data point, so its need to take its len as reference to do calculations
len = length(temperature_pt1000_cold_lp)
err_pt1000_cold = abs(temperature_pt1000_cold_lp([N:end]) - temperature_ds18b20_cold([N:len])) ./ temperature_ds18b20_cold([N:len]);
err_pt1000_warm = abs(temperature_pt1000_warm_lp([N:end]) - temperature_ds18b20_warm([N:len])) ./ temperature_ds18b20_warm([N:len]);

figure()
hold on
plot(tick1([N:end]), err_pt1000_cold*100)
plot(tick1([N:end]), err_pt1000_warm*100)
ylim([-100,100])
title(['error'])
ylabel('error / %')
xlabel('t / h')
legend('cold',  'warm', 'Location', 'NorthWest')

