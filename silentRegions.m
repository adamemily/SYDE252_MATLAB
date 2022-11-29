clc
clear all

%read signal
[y_unfiltered, Fs] = audioFunction('Birds.wav');

% apply weighted average filter
y_filtered = weightedAvgFunc(y_unfiltered, Fs, 8);

% plot original graph for comparison

dt_Data = 1/Fs;
t = 0:dt_Data:(length(y_unfiltered)*dt_Data)-dt_Data;

hold on

plot(t,y_filtered); 
title('Silent Regions');
xlabel('Seconds (s)');
ylabel('Amplitude');


L = length(y_filtered) % length of array of signal

% make areas with high volume solid "blocks" of signal at HIGH
% everything else is LOW
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

% audio signal timespan
sampleTime = L/Fs;


%Print silent regions to console

fprintf('Silent region starting at 0');


silentStart = 0;


%Print silent regions to console and display as patch on graphs
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

patch([timeStamp timeStamp sampleTime sampleTime],[-0.1 0.1 0.1 -0.1],'red','FaceAlpha',0.5);

fprintf(', Silent region ending at %d\n',sampleTime)





