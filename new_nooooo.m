clc
clear all 

[Bird, Fs_Bird] = audioread('Birds.wav');
birdInfo =audioinfo("Birds.wav");
numChanel_bird = birdInfo.NumChannels
audiowrite('Birds.wav', Bird, Fs_Bird)


[Drum, Fs_Drum] = audioread('Drum.wav');
DrumInfo =audioinfo("Drum.wav");
numChanel_Drum = DrumInfo.NumChannels
audiowrite('Birds.wav', Drum, Fs_Drum)

[Speech, Fs_Speech] = audioread('Speech.wav');
SpeechInfo =audioinfo("Speech.wav");
numChanel_Speech = SpeechInfo.NumChannels
audiowrite('Speech.wav', Speech, Fs_Speech)

sound(Bird, Fs_bird)
sound(Speech,Fs_Speech)
sound(Drum,Fs_Drum)
