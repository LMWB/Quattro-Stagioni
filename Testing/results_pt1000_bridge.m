clc;clear;close;
filename1 = "pt1000-log.csv"
filename2 = "ds18b20-log.csv"
data1 = dlmread (filename1, ',');
data2 = dlmread (filename2, ',');

tick1 = data1([1:end], 2);
tick2 = data2([1:end], 2);

temperature_pt1000_cold = data1([1:end], 6);
temperature_ds18b20_cold = data2([1:end], 4);
temperature_pt1000_warm = data1([1:end], 11);
temperature_ds18b20_warm = data2([1:end], 7);

%%
% Die Daten werden gemittelt bzw. geglaettet um eine besseren Analyse zu
N = 8;                                                                      % Gleitender Mittelwert f. Daten Analyse
h_mean  = ones(1,N)*1/N;
temperature_pt1000_cold_lp = filter(h_mean, 1, temperature_pt1000_cold);
temperature_pt1000_warm_lp = filter(h_mean, 1, temperature_pt1000_warm);

figure()
hold on
#plot(temperature_pt1000_cold)
plot(temperature_pt1000_cold_lp)
plot(temperature_ds18b20_cold)

figure()
hold on
#plot(temperature_pt1000_warm)
plot(temperature_pt1000_warm_lp)
plot(temperature_ds18b20_warm)