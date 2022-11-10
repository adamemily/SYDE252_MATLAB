function Data_out = audioFunction(audioFile)

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
        Data_out = Data_combined;
    else
        Data_out = Data;
    end

    audiowrite(newName, Data_out, Fs);
    sound(Data_out, Fs);
    pause(10);
    plot(t,Data_out);

    xlabel('Seconds'); 
    ylabel('Amplitude');
end