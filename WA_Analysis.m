clc
clear all 
hold on

[y_unfiltered, Fs] = audioFunction('Speech.wav');
dt_Data = 1/Fs;
t = 0:dt_Data:(length(y_unfiltered)*dt_Data)-dt_Data;
%subplot(2, 1, 1)
plot(t,y_unfiltered);

y_filtered = weightedAvgFunc(y_unfiltered, Fs, 30);
%subplot(2, 1, 2)
plot(t,y_filtered); 

% y_LPF = Mean(y_unfiltered);
% y_HPF = y_unfiltered - y_LPF;
% plot(t, y_HPF)
% plot(t, y_LPF)

xlabel('Seconds'); ylabel('Amplitude');
legend('Unfiltered Data', 'Filtered Data');