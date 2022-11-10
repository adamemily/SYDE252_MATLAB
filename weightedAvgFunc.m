function y = weightedAvgFunc(x, Fs, windowSize) %y = filtered output, %x = signal input
    weights = gausswin(windowSize);
    weights = weights./sum(weights);
    b = weights./windowSize;
    y = filter(b, 1, x);

    audiowrite('wa_filtered.wav', y, Fs);
end
