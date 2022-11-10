function y = weightAvgFunc(x, windowSize) %y = filtered output, %x = signal input
    weights = gausswin(windowSize);
    weights = weights./sum(weights);
    b = weights./windowSize;
    y = filter(b, 1, x);
end
