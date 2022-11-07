function y = weightAvgFunc(x, windowSize) %y = filtered output, %x = signal input
    weights = gausswin(windowSize);
    b = weights./windowSize;
    y = filter(b, 1, x);
end

