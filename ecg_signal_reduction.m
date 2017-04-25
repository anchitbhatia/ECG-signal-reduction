clc; clear all; close all;
fs=1000;
f1=40;
f2=60; % sampling, lower and upper cutoff frequencies in Hz respectively;
w1=2*f1/fs; % computes normalized digital lower cutoff frequency;
w2=2*f2/fs; % computes normalized digital upper cutoff frequency;
L=100; % order of the filter;
Wn=[w1 w2]; % if the programmer desires to define the two cutoff       frequencies by one sample
b=fir1(L,Wn,'stop',hamming(L+1)); % creates the object of the notch filter weighted with hamming window;
[h,w]=freqz(b,1,256); % returns 256 samples of the frequency response vector h and the corresponding frequency vector w, between 0 and _;
HdB=20*log10(abs(h)); % computes the magnitude vector in dB;
phaseangle=unwrap(angle(h)); % computes unwrap phase angle vector;
figure(1);
plot(w*fs/(2*pi),abs(h)), grid on; % plots the magnitude response of the filter in dB;
figure(2);
plot(w,phaseangle) ,grid on;% plots the phase response of the filter;
k=1:3000;
x1=0.1*sin(2*pi*50*(k-1)/fs); % sampled 0.1mV/ 50Hz powerline noise;
x=3.5*ecg(3000); % sampled 3.5mV ecg signal;
d=x1+x; % contaminated ecg signal;
si=zeros(1,L); % initializes all filter taps to zero;
y=filter(b,1,d,si); % filters the ecg signal;
figure(3);
plot(k-1,x) ,grid on;% plots samples the clean ecg sigal;
figure(4);
plot(k-1,d) ,grid on;% plots the contaminated ecg signal;
figure(5);
plot(k-1,y) ,grid on;% plots the filtered ecg signal;


