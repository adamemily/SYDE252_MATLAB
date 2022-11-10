clc
clear all 

[y_unfiltered, Fs] = audioFunction('Birds.wav');
dt_Data = 1/Fs;
t = 0:dt_Data:(length(y_unfiltered)*dt_Data)-dt_Data;
subplot(2, 1, 1)
plot(t,y_unfiltered); xlabel('Seconds'); ylabel('Amplitude');

window = 100;
y_filtered = weightedAvgFunc(y_unfiltered, Fs, window);
subplot(2, 1, 2)
plot(t,y_filtered); xlabel('Seconds'); ylabel('Amplitude');