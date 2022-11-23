clc
clear all

[y, Fs] = audioFunction('Drum.wav');

%graph the signal with peaks denoted
findpeaks(y,Fs,'MinPeakDistance',0.05, 'Threshold',0.13)


pks = findpeaks(y,Fs,'MinPeakDistance',0.05, 'Threshold',0.13);
numPeaks = size(pks,1)


sampleLength = length(y); % sample lenth
sampleTime = sampleLength/Fs % audio signal timespan


bpmValue = (numPeaks/sampleTime)*60 %multiply by 60 for beats per minute