a0 = 1;
n = 512;
fs = 200;
figure(33);
[h1,w1] = freqz(b3, a0, n);
mag1 = abs(h1); 
phase1 = angle(h1)*180/pi;
subplot(4,1,1), 
plot(w1/(2*pi)*fs, mag1), grid on;
title('АЧХ режекторного СІХ-фільтру');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(4,1,2),
plot(w1/(2*pi)*fs, unwrap(phase1)), grid on;
title('ФЧХ режекторного СІХ-фільтру');
xlabel('Частота'), ylabel('Фаза');
subplot(4,1,3), 
plot(w/(2*pi)*fs,mag), grid on;
title('АЧХ режекторного НІХ-фільтру');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(4,1,4), 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('ФЧХ режекторного НІХ-фільтру');
xlabel('Частота'), 
ylabel('Фаза');
