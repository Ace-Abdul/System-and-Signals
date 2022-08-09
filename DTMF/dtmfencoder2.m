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
print('-dpng','1592')