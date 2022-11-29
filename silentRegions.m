clc
clear all

[y_unfiltered, Fs] = audioFunction('Birds.wav');

dt_Data = 1/Fs;
t = 0:dt_Data:(length(y_unfiltered)*dt_Data)-dt_Data;

y_filtered = weightedAvgFunc(y_unfiltered, Fs, 8);


hold on

%Plot original graph for comparison

plot(t,y_filtered); 
title('Silent Regions');
xlabel('Seconds (s)');
ylabel('Amplitude');


L = length(y_filtered)


for i=1:1:(L-1000)
    silentBlock = true;
    
    for j = i:1:(i+1000)
        if (y_filtered(j) > 0.001)
            silentBlock = false;
        end
    end
    if (silentBlock == false)
        y_filtered(i) = 0.1;

    else
        y_filtered(i) = 0;

    end
    
end



%Plot peaks
plot(t,y_filtered); 



sampleTime = L/Fs % audio signal timespan



%Print silent regions to console

fprintf('Silent region starting at 0')


silentStart = 0;

for i=1:1:(L-1000)
    if (y_filtered(i) == 0.1 && y_filtered(i+1) == 0)
        timeStamp = (i/L)*sampleTime;
        silentStart = timeStamp;
        
        fprintf('Silent region starting at %i',timeStamp);
    end
    
    
    if (y_filtered(i) == 0 && y_filtered(i+1) == 0.1)
        timeStamp = (i/L)*sampleTime;
        
       
        x = [silentStart silentStart timeStamp timeStamp];
        y = [-0.1 0.1 0.1 -0.1];
        patch(x,y,'red','FaceAlpha',0.5);
        
        fprintf(', Silent region ending at %i\n',timeStamp);
    end
    
end


fprintf(', Silent region ending at %d\n',sampleTime)





