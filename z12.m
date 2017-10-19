n = 512;
figure(121);
[h,w] = freqz(b,a,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1); 
plot(w/(2*pi)*fs,mag), grid on;
title('Амплітудно-частотна характеристика');
xlabel('Частота'),
ylabel('Амплітуда');
subplot(2,1,2); 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('Фазо-частотна характеристика');
xlabel('Частота'), ylabel('Фаза');
% Обчислення нулів та полюсів фільтру
disp('Нулі фільтру') ;
x = roots(b);
disp(x);
% Карта нулів та полюсів фільтру
figure(122);
k=zplane(x);
