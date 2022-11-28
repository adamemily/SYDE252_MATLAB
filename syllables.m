clc
clear all

[y_unfiltered, Fs] = audioFunction('Speech.wav');

y_filtered = Mean(y_unfiltered, Fs, 20);

findpeaks(abs(y_filtered),Fs,'MinPeakHeight',0.02,'MinPeakDistance',0.18) %graph
pks = findpeaks(abs(y_filtered),Fs,'MinPeakHeight',0.02,'MinPeakDistance',0.18)
numPeaks = size(pks,1)


% %graph silent regions
% detectSpeech(abs(y),Fs)
% 
% 
% [idx,thresholds] = detectSpeech(abs(y),Fs);
% 
% %output values
% idx
% numSyll = size(idx,1)
% thresholds
