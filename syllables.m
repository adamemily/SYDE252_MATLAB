clc
clear all

[y, Fs] = audioFunction('Birds.wav');

%graph silent regions
detectSpeech(y,Fs)


[idx,thresholds] = detectSpeech(y,Fs);

%output values
idx
numSyll = size(idx,1)
thresholds
