clc
clear all 

window = 8;

hold on
[y_unfiltered, Fs] = audioFunction('Birds.wav');
dt_Data = 1/Fs;
t = 0:dt_Data:(length(y_unfiltered)*dt_Data)-dt_Data;
%subplot(2,1,1)
plot(t,y_unfiltered); title('Original');xlabel('Seconds'); ylabel('Amplitude');
sound(y_unfiltered,Fs);

y_filtered = medianFunc(y_unfiltered, window);
%subplot(2,1,2)
plot(t,y_filtered); title('Median Filtered'); xlabel('Seconds'); ylabel('Amplitude');
%sound(y_filtered,Fs);