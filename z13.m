r1 = 0.7;
b1 = [1  0 -1];                  
a1 = [1 -2*r1*cos(phi) r1^2]; 
figure(131);
[h,w] = freqz(b1,a1,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1);
plot(w/(2*pi)*fs,mag), grid on;
title('���������-�������� ��������������');
xlabel('�������'),
ylabel('��������');
subplot(2,1,2); 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('����-�������� ��������������');
xlabel('�������'), 
ylabel('����');
disp('��� ������� (r = 0.7)') ;
x1 = roots(b1);
disp(x1);
figure(132);
k1 = zplane(x1); grid on;
r2 = 0.9;
b2 = [1  0 -1];                    
a2 = [1 -2*r2*cos(phi) r2^2];   
figure(133);
[h,w] = freqz(b2,a2,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1); 
plot(w/(2*pi)*fs,mag), grid on;
title('���������-�������� ��������������');
xlabel('�������'), 
ylabel('��������');
subplot(2,1,2); 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('����-�������� ��������������');
xlabel('�������'), 
ylabel('����');
disp('���������� (r = 0.9)') ;
x2 = roots(b2);
disp(x2);
figure(134);
k2 = zplane(x2); grid on;
