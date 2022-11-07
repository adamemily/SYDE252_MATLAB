function[Data, Fs, DataInfo, numChannel_Data,  dt_Data, t] = audioFunction(audioFile)

[Data, Fs] = audioread(audioFile); 
DataInfo = audioinfo(audioFile);
numChannel_Data = DataInfo.NumChannels
%audiowrite('newAudio', Data, Fs);

sound(Data, Fs);

dt_Data = 1/Fs;
t = 0:dt_Data:(length(Data)*dt_Data)-dt_Data;
plot(t,Data); 
xlabel('Seconds'); 
ylabel('Amplitude');