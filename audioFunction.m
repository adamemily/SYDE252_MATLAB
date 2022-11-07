function Data = audioFunction(audioFile)

    [Data, Fs] = audioread(audioFile); 
    DataInfo = audioinfo(audioFile);
    numChannel_Data = DataInfo.NumChannels;

    audioFile = erase(audioFile, ".wav");
    newName = audioFile + "Low.wav";
    dt_Data = 1/Fs;
    t = 0:dt_Data:(length(Data)*dt_Data)-dt_Data;

    %sum channels together
    if numChannel_Data > 1
        Data_combined = zeros(size(Data, 1), 1);

        %iterate by column
        for j=1: 1: numChannel_Data
            %iterate by row
            for i=1: 1: size(Data, 1)
                Data_combined(i, 1) = Data_combined(i, 1) + Data(i, j);
            end
        end
        
        Data_combined = rescale(Data_combined, -1, 1); %to avoid clipping warning
        audiowrite(newName, Data_combined, Fs);
        sound(Data_combined, Fs);
        pause(10);
        plot(t,Data_combined);
    else
        audiowrite(newName, Data, Fs);
        sound(Data, Fs);
        pause(10);
        plot(t,Data);
    end

    xlabel('Seconds'); 
    ylabel('Amplitude');
end