n = 512;
figure(321);
[h,w] = freqz(b3,a3,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1), 
plot(w/(2*pi)*fs,mag), grid on;
title('Амплітудно-частотна характеристика');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,1,2),
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('Фазо-частотна характеристика');
xlabel('Частота'),
ylabel('Фаза');
disp('Нулі режекторного НІХ-фільтру');
x = roots(b3);
disp(x);
figure(322);
k = zplane(x);
