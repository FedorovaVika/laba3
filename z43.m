figure(431);
subplot(2,1,1);
mag0 =1./(2*pi*f);
loglog(f,mag0,f,mag); grid on;
title('Графік похибки інтегратора методом прямокутників');
err = (mag-mag0)*100;
subplot(2,1,2),
plot(f,err), grid on;
figure(432);
subplot(2,1,1);
mag0 =1./(2*pi*f1);
loglog(f1,mag0,f1,mag1); grid on;
title('Графік похибки інтегратора методом трапецій');
err1 = (mag1-mag0)*100;
subplot(2,1,2), 
plot(f1,err1), grid on;
figure(433);
subplot(2,1,1);
mag0 =1./(2*pi*f2);
loglog(f2,mag0,f2,mag2); grid on;
title('Графік похибки інтегратора методом Сімпсона');
err2 = (mag2-mag0)*100;
subplot(2,1,2), 
plot(f2,err2), grid on;
