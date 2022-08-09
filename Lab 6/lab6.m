clear
p= sig(100,1,8000);
figure(1);clf;
subplot(2,1,1)
stem(p,'k.');
xlabel('time (ms)')
title('100Hz')
p= sig(7900,1,8000);
subplot(2,1,2)
stem(p,'k.');
xlabel('time (ms)')
title('7900Hz')

print -dpng fig1

p= sig(200,1,8000);
figure(2);clf;
subplot(2,1,1)
stem(p,'k.');
title('200Hz')

xlabel('time (ms)')
p= sig(7800,1,8000);
subplot(2,1,2)
stem(p,'k.');
xlabel('time (ms)')
title('7800Hz')

print -dpng fig2


p= sig(400,1,8000);
figure(3);clf;
subplot(2,1,1)
stem(p,'k.');
xlabel('time (ms)')
title('400Hz')

p= sig(7600,1,8000);
subplot(2,1,2)
stem(p,'k.');
xlabel('time (ms)')
title('7600Hz')

print -dpng fig3

p= sig(800,1,8000);
figure(4);clf;
subplot(2,1,1)
stem(p,'k.');
xlabel('time (ms)')
title('800Hz')

p= sig(7200,1,8000);
subplot(2,1,2)
stem(p,'k.');
xlabel('time (ms)')
title('7200Hz')

print -dpng fig4
