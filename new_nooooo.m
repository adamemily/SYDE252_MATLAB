clc
clear all 

t = 0:1:4

x = [1 2 3 2 1]
subplot(2,1,1)
plot(t,x);
xlabel('Seconds'); ylabel('Amplitude');

h = 1/3.*




% [Bird, Fs_Bird] = audioread('Birds.wav'); 
% birdInfo =audioinfo("Birds.wav");
% numChanel_bird = birdInfo.NumChannels
% audiowrite('BirdsLow.wav', Bird, Fs_Bird)
% audiowrite('BirdsHigh.wav', Bird, Fs_Bird)


% [Drum, Fs_Drum] = audioread('Drum.wav');
% DrumInfo =audioinfo("Drum.wav");
% numChanel_Drum = DrumInfo.NumChannels
% audiowrite('DrumLow.wav', Drum, Fs_Drum)
% audiowrite('DrumHigh.wav', Drum, Fs_Drum)
% 
% Drum1 = zeros(size(Drum, 1), 1);
%     %sum channels together
%     if numChanel_Drum > 1
%         %iterate by column
%         for j=1: 1: numChanel_Drum
%             %iterate by row
%             for i=1: 1: size(Drum, 1)
%                 Drum1(i, 1) = Drum1(i, 1) + Drum(i, j);
%             end
%         end
%     end
% 
%     audioFile = "Drum.wav"
%     audioFile = erase(audioFile, ".wav");
%     newName = audioFile + "Low.wav"

% [Speech, Fs_Speech] = audioread('Speech.wav');
% SpeechInfo =audioinfo("Speech.wav");
% numChanel_Speech = SpeechInfo.NumChannels
% audiowrite('SpeechLow.wav', Speech, Fs_Speech)
% audiowrite('SpeechHigh.wav', Speech, Fs_Speech)

% sound(Bird, Fs_Bird)
% sound(Speech,Fs_Speech)
% sound(Drum,Fs_Drum)

%plot
% subplot(3,2,[1,2])
% dt_Bird = 1/Fs_Bird;
% t = 0:dt_Bird:(length(Bird)*dt_Bird)-dt_Bird;
% plot(t,Bird); xlabel('Seconds'); ylabel('Amplitude');
% 
% subplot(3,2,[3,4])
% Drum1 = Drum1(:,1);
% dt_Drum = 1/Fs_Drum;
% t = 0:dt_Drum:(length(Drum1)*dt_Drum)-dt_Drum;
% plot(t,Drum1); xlabel('Seconds'); ylabel('Amplitude');
% 
% 
% subplot(3,2,[5,6])
% dt_Speech = 1/Fs_Speech;
% t = 0:dt_Speech:(length(Speech)*dt_Speech)-dt_Speech;
% plot(t,Speech); xlabel('Seconds'); ylabel('Amplitude');
