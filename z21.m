fs=200;
ecg=load('ecg105.txt');
ecgd = detrend(ecg);
ecgf = filter(b,a,ecgd);
t=(0:length(ecgf)-1)/fs;
figure(21);
subplot(2,1,1); 
plot(t,ecg), grid on, 
xlim([6 10]);
title('Вхідний сигнал');
xlabel('Час'); 
ylabel('Амплітуда');
subplot(2,1,2);
plot(t,ecgf), grid on, 
xlim([6 10]);
title('Фільтрований сигнал');
xlabel('Час'); ylabel('Амплітуда');
