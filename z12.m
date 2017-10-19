n = 512;
figure(121);
[h,w] = freqz(b,a,n);
mag = abs(h); phase = angle(h)*180/pi;
subplot(2,1,1); 
plot(w/(2*pi)*fs,mag), grid on;
title('���������-�������� ��������������');
xlabel('�������'),
ylabel('��������');
subplot(2,1,2); 
plot(w/(2*pi)*fs,unwrap(phase)), grid on;
title('����-�������� ��������������');
xlabel('�������'), ylabel('����');
% ���������� ���� �� ������ �������
disp('��� �������') ;
x = roots(b);
disp(x);
% ����� ���� �� ������ �������
figure(122);
k=zplane(x);
