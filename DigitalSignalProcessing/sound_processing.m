
t = linspace(0,1,8192);
a = 0.5*sin(2*pi*500*t);
b = 0.5*sin(2*pi*2500*t);
c = a + b;
%sound(c);

lowfilter = fir1(6,1500/(8192/2));  %order, cutoff frequency relative of nyquist freq
                     %fs/2 = fn, so f_cutoff/(fn)
                     % this gives us coefficient for use with filter
                     % functionj 
i = filter(lowfilter,1,c); %B, A are for FIR in equation
sound(i);

pause;
highfilter = fir1(6,1500/(8192/2),'high');
j = filter(highfilter,1,c);
sound(j);

%%
close all
N = length(c);
fs = 8192; %samples per sec
fn = fs/2; %nyquist freq
X_mags = abs(fft(c));
bin_vals = [0: N-1];
fax_hz = bin_vals*fs/N;
N_2 = ceil(N/2);
figure()
plot(fax_hz(1:N_2),X_mags(1:N_2));
xlabel('frequency [hz]');
ylabel('maginitude');
title('combined signal');
axis tight
figure()
X_mags5 = abs(fft(i));
plot(fax_hz(1:N_2),X_mags5(1:N_2));
xlabel('frequency [hz]');
ylabel('maginitude');
title('low pass filter signal');
axis tight
figure()
X_mags25 = abs(fft(j));
plot(fax_hz(1:N_2),X_mags25(1:N_2));
xlabel('frequency [hz]');
ylabel('maginitude');
title('high pass filter signal');
axis tight