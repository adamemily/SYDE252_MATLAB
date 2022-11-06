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

%plot
subplot(3,2,[1,2])
dt_Bird = 1/Fs_Bird;
t = 0:dt_Bird:(length(Bird)*dt_Bird)-dt_Bird;
plot(t,Bird); xlabel('Seconds'); ylabel('Amplitude');

subplot(3,2,[3,4])
dt_Drum = 1/Fs_Drum;
t = 0:dt_Drum:(length(Drum)*dt_Drum)-dt_Drum;
plot(t,Drum); xlabel('Seconds'); ylabel('Amplitude');

subplot(3,2,[5,6])
dt_Speech = 1/Fs_Speech;
t = 0:dt_Speech:(length(Speech)*dt_Speech)-dt_Speech;
plot(t,Speech); xlabel('Seconds'); ylabel('Amplitude');
