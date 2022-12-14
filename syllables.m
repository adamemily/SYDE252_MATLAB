clc
clear all

% read audio signal
[y_unfiltered, Fs] = audioFunction('Speech.wav');

% apply Mean filter to signal
y_filtered = Mean(y_unfiltered, Fs, 20);


% plot 
dt_Data = 1/Fs;
t = 0:dt_Data:(length(y_filtered)*dt_Data)-dt_Data;

hold on 
plot(t,y_filtered); 
title('Beats Per Minute');
xlabel('Seconds (s)');
ylabel('Amplitude');


% use findpeaks to display peaks
findpeaks(abs(y_filtered),Fs,'MinPeakHeight',0.02,'MinPeakDistance',0.18) %graph

% output number of syllables
pks = findpeaks(abs(y_filtered),Fs,'MinPeakHeight',0.02,'MinPeakDistance',0.18);
numSyllables = size(pks,1)


