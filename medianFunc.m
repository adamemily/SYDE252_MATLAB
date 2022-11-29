function a = medianFunc(x, windowSize)
    %apply median filter
    a = medfilt1(x,windowSize);
end
