clc
clear all 

audio_bird = audioread('Birds.wav');
bird =audioinfo("Birds.wav");
sampR_bird = bird.SampleRate
numChanel_bird = bird.NumChannels
x = play(audio_bird);


[audio_drum, drumFs] = audioread('Drum.wav');
drum =audioinfo("Drum.wav");
sampR_drum = drum.SampleRate
numChanel_drum = drum.NumChannels


audio_speech = audioread('Speech.wav');
speech =audioinfo("Speech.wav");
sampR_speech = speech.SampleRate
numChanel_speech = speech.NumChannels



