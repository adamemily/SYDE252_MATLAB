function y = Mean(Data, Fs)

window = 15;  
b = (1/window)*ones(1,window);
a = 1;
y = filter(b,a,Data);
dt_Data = 1/Fs;
t = 0:dt_Data:(length(Data)*dt_Data)-dt_Data;

sound(y);

hold on
plot(t,y)
legend('Filtered Data')  