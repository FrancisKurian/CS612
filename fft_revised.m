clear;
n=64;
dt=0.01;
fs=1/dt;
T=n/fs;
tspan=(0:n-1)/fs;
y=cos(2*pi*12.5*tspan)+cos(2*pi*25*tspan);
subplot(4,1,1);
plot(tspan,y,'-ok','MarkerSize',4,'linewidth',1,'MarkerFaceColor','blue');
title('(a) f(t) vs time(s)');

%compute the DFT
Y=fft(y)/n;
nyquist =fs/2;fmin=1/T;
f=linspace(fmin,nyquist,n/2);
Y(1)=[];YP=Y(1:n/2);
subplot(4,1,2);
stem(f,real(YP),'linewidth',2,'MarkerFaceColor','blue');
grid;
title('(b) Real Components vs Frequency');

subplot(4,1,3);
stem(f,imag(YP),'linewidth',2,'MarkerFaceColor','blue');
grid;
title('(c) Imaginary Components vs Frequency');
xlabel('frequency (Hz)');

%Compute Power Spectrum
f=(1:n/2)/(n/2)*nyquist;
Pyy=abs(Y(1:n/2)).^2;
subplot(4,1,4);
stem(f,Pyy,'linewidth',2,'MarkerFaceColor','blue');
title('Power Spectrum');
xlabel('frequency (Hz)');
ylim([0,0.3]);



