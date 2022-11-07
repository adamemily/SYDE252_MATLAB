function[Data, Fs, DataInfo, numChannel_Data,  dt_Data, t] = audioFunction(audioFile)

[Data, Fs] = audioread(audioFile); 
DataInfo = audioinfo(audioFile);
numChannel_Data = DataInfo.NumChannels
%audiowrite('newAudio', Data, Fs); can't seem to get this to run??? like it throws an error

sound(Data, Fs);

dt_Data = 1/Fs;
t = 0:dt_Data:(length(Data)*dt_Data)-dt_Data;
plot(t,Data); 
xlabel('Seconds'); 
ylabel('Amplitude');

%the og nooooo.m has the code where it calls this function we woulf just need to call the function x amount of times for each plot/audio and all the changing of the FS
