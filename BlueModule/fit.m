f1=3500,f2=100;
Fs=8000;
N=8;
L=1024;



t=0:1/Fs:1/Fs*(L-1);
s1=sin(2*pi*f1*t);
s2=sin(2*pi*f2*t);
si=s1+s2;
si=round(si*(2^(N-1)-1));
f_s=si/max(abs(si));
Q_s=round(f_s*(2^(N-1)-1));
subplot(211);plot(t,Q_s);
xlabel('time(s)','fontsize',8);
ylabel('manitude(v)','fontsize',8);
title('time-domain signal','fontsize',8);


f=abs(fft(si,L));
ft=[0:(Fs/L):Fs/2]*(10^(-3));
f1=f(1:length(ft));
f1=f1/max(f1);
subplot(212);plot(ft,f1);
xlabel('frequency(kHz)','fontsize',8);
ylabel('manitude(v)','fontsize',8);
title('amplitude-frequency response','fontsize',8);

fid=fopen('\home\houyayue\hodepoint\TextCode\BlueModule\SinIn.txt','w');
for k=1:length(Q_s)
    B_s=dec2bin(Q_s(k)+(Q_s(k)<0)*2^N,N);
    for j=1:N
         if B_s(j)=='1'
             tb=1;
         else
             tb=0;
         end
         fprintf(fid,'%d',tb);
    end
    fprintf(fid,'\r\n');
end
fprintf(fid,';');
fclose(fid);



