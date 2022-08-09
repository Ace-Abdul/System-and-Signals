One = dtmfdial('1',8000);
Five = dtmfdial('5',8000);
Nine = dtmfdial('9',8000);
subplot(2,2,1);
plot(One); title('Tone for key 1')
% xlim([0 2000])
% ylim([0 .5])
subplot(2,2,2);
plot(Five); title('Tone for key 5')
% xlim([0 2000])
% ylim([0 .5])
subplot(2,2,3);
plot(Nine); title('Tone for key 9')
% xlim([0 2000])
% ylim([0 .5])
print('-dpng','159')

fs=8000;

del  = [0  :   1/fs:   0.05-1/fs];
half  = [0   :   1/fs:   0.5-1/fs];

f1= [sin(2*pi*697*half) sin(0*del)];
f2= [sin(2*pi*770*half) sin(0*del)];
f3= [sin(2*pi*852*half) sin(0*del)];
f4= [sin(2*pi*941*half) sin(0*del)];
f5= [sin(2*pi*1209*half) sin(0*del)];
f6= [sin(2*pi*1336*half) sin(0*del)];
f7= [sin(2*pi*1477*half) sin(0*del)];

r=xcorr(f1, One);r2=xcorr(f2, One);r3=xcorr(f3, One);r4=xcorr(f4, One);r5=xcorr(f5, One);r6=xcorr(f6, One);r7=xcorr(f7, One);

figure
subplot(3,7,1);plot(r); title('697 Hz'); ylabel('1')
subplot(3,7,2);plot(r2);title('770 Hz')
subplot(3,7,3);plot(r3);title('852 Hz')
subplot(3,7,4);plot(r4);title('941 Hz')
subplot(3,7,5);plot(r5);title('1209 Hz')
subplot(3,7,6);plot(r6);title('1336 Hz')
subplot(3,7,7);plot(r7);title('1477 Hz')

r=xcorr(f1, Five);r2=xcorr(f2, Five);r3=xcorr(f3, Five);r3=xcorr(f4, Five);r5=xcorr(f5, Five);r6=xcorr(f6, Five);r7=xcorr(f7, Five);
subplot(3,7,8);plot(r); title('697 Hz'); ylabel('5')
subplot(3,7,9);plot(r2);title('770 Hz')
subplot(3,7,10);plot(r3);title('852 Hz')
subplot(3,7,11);plot(r4);title('941 Hz')
subplot(3,7,12);plot(r5);title('1209 Hz')
subplot(3,7,13);plot(r6);title('1336 Hz')
subplot(3,7,14);plot(r7);title('1477 Hz')

r=xcorr(f1, Five);r2=xcorr(f2, Five);r3=xcorr(f3, Five);r4=xcorr(f4, Five);r5=xcorr(f5, Five);r6=xcorr(f6, Five);r7=xcorr(f7, Five);
subplot(3,7,8);plot(r); title('697 Hz'); ylabel('5')
subplot(3,7,9);plot(r2);title('770 Hz')
subplot(3,7,10);plot(r3);title('852 Hz')
subplot(3,7,11);plot(r4);title('941 Hz')
subplot(3,7,12);plot(r5);title('1209 Hz')
subplot(3,7,13);plot(r6);title('1336 Hz')
subplot(3,7,14);plot(r7);title('1477 Hz')

r=xcorr(f1, Nine);r2=xcorr(f2, Nine);r3=xcorr(f3, Nine);r4=xcorr(f4, Nine);r5=xcorr(f5, Nine);r6=xcorr(f6, Nine);r7=xcorr(f7, Nine);
subplot(3,7,15);plot(r); title('697 Hz'); ylabel('9')
subplot(3,7,16);plot(r2);title('770 Hz')
subplot(3,7,17);plot(r3);title('852 Hz')
subplot(3,7,18);plot(r4);title('941 Hz')
subplot(3,7,19);plot(r5);title('1209 Hz')
subplot(3,7,20);plot(r6);title('1336 Hz')
subplot(3,7,21);plot(r7);title('1477 Hz')
print('-dpng','r')


figure
subplot(1,2,1);plot(r);subplot(1,2,2);plot(r)

figure
r=xcorr(f1, UnknownKey);r2=xcorr(f2, UnknownKey);r3=xcorr(f3, UnknownKey);r4=xcorr(f4, UnknownKey);r5=xcorr(f5, UnknownKey);
r6=xcorr(f6, UnknownKey);
r7=xcorr(f7, UnknownKey);
subplot(2,4,1);plot(r); title('697 Hz'); ylabel('Unknown Key Tones Correlation Plots')
subplot(2,4,2);plot(r2);title('770 Hz')
subplot(2,4,3);plot(r3);title('852 Hz')
subplot(2,4,4);plot(r4);title('941 Hz')
subplot(2,4,5);plot(r5);title('1209 Hz');ylabel('Unknown Key Tones Correlation Plots')
subplot(2,4,6);plot(r6);title('1336 Hz')
subplot(2,4,7);plot(r7);title('1477 Hz')
print('-dpng','Unknown');