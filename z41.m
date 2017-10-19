fs = 300;
T = 1/fs;
% Інтегрування методом прямокутників
b =T*1;
a = [1 -1];
% Інтегрування методом трапецій.
b1 = [1 1]*T/2;
a1 = [1 -1];
% Інтегрування методом парабол (Сімпсона)
b2 = [1 4 1]*T/3;
a2 = [1 0 -1];
n = 512;
[h,f] = freqz(b,a,n);
mag = abs(h); phase = angle(h)*180/pi;
[h1,f1] = freqz(b1,a1,n);
mag1 = abs(h1); phase1 = angle(h1)*180/pi;
[h2,f2] = freqz(b2,a2,n);
mag2 = abs(h2); phase2 = angle(h2)*180/pi;
figure(411);
subplot(2,3,1); 
plot(f/(2*pi)*fs,mag), grid on, 
xlim([-5 100]), 
ylim([-0.05 0.6]);
title('АЧХ (метод прямокутників)');
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,3,2); 
plot(f1/(2*pi)*fs,mag1), grid on, 
xlim([-5 100]), 
ylim([-0.05 0.6]);
title('АЧХ (метод трапецій)'); 
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,3,3); 
plot(f2/(2*pi)*fs,mag2), grid on, 
xlim([-5 155]), 
ylim([-0.05 0.6]);
title('АЧХ (метод Сімпсона)'); 
xlabel('Частота'), 
ylabel('Амплітуда');
subplot(2,3,4); 
plot(f/(2*pi)*fs,unwrap(phase)), grid on;
title('ФЧХ (метод прямокутників)');
xlabel('Частота'), 
ylabel('Фаза');
subplot(2,3,5); 
plot(f1/(2*pi)*fs,unwrap(phase1)), grid on;
title('ФЧХ (метод трапецій)'); 
xlabel('Частота'), 
ylabel('Фаза');
subplot(2,3,6); 
plot(f2/(2*pi)*fs,unwrap(phase2)), grid on;
title('ФЧХ (метод Сімпсона)'); 
xlabel('Частота'),
ylabel('Фаза');
