fs=200;
ecg=load('ecg105.txt');
ecgd = detrend(ecg);
ecgf1 = filter(b1,a1,ecgd);
t=(0:length(ecgf1)-1)/fs;
figure(22);
subplot(3,1,1), 
plot(t,ecg), grid on, 
xlim([6 10]), 
ylim([-420 0]);
title('Вхідний сигнал');
xlabel('Час'), 
ylabel('Амплітуда');
subplot(3,1,2); 
plot(t,ecgf), grid on, 
xlim([6 10]), 
ylim([-550 400]);
title('Фільтрований сигнал');
xlabel('Час'),
ylabel('Амплітуда');
ecgf2 = filter(b2,a2,ecgd);
t=(0:length(ecgf2)-1)/fs;
subplot(3,1,3),
plot(t,ecgf), grid on, 
xlim([6 10]), 
ylim([-550 400]);
title('Фільтрований сигнал 2');
xlabel('Час'), ylabel('Амплітуда');
