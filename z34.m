fs = 200;
ecg = load('ecg2x60.dat');
ecgf = filter(b3,a3,ecg);
t =(0:length(ecgf)-1)/fs;
figure(34);
subplot(2,1,1), 
plot(t,ecg), grid on;
title('Вхідний сигнал');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(2,1,2); 
plot(t,ecgf), grid on;
title('Фільтрований сигнал');
xlabel('Час'), 
ylabel('Амплітуда');
