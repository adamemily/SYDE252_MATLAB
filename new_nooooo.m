clc
clear all 

[bird, Fs_bird] = audioread('Birds.wav');
[drum, Fs_drum] = audioread('Drum.wav');
[Speech, Fs_Speech] = audioread('Speech.wav');

sound(bird, Fs_bird)
sound(Speech,Fs_Speech)
sound(Drum,Fs_Drum)