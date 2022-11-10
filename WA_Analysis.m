clc
clear all 
%hold on

[y_unfiltered, Fs] = audioFunction('Speech.wav');
dt_Data = 1/Fs;
t = 0:dt_Data:(length(y_unfiltered)*dt_Data)-dt_Data;
%subplot(2, 1, 1)
%plot(t,y_unfiltered);

window = 10;
y_filtered = weightedAvgFunc(y_unfiltered, Fs, window);
%subplot(2, 1, 2)
plot(t,y_filtered); 

xlabel('Seconds'); ylabel('Amplitude');