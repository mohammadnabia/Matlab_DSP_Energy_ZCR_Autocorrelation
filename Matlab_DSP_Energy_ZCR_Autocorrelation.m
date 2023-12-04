%% Reading our wav signal
[Y,FS,WMODE,FIDX]=readwav('Mlvsp8.wav');
%%
[y,fs] = readwav('Mlvsp8.wav');
TotalTime = length(y)./fs;
length(y)

%% play to hear which part of the voice we have selected
player = audioplayer(Y(1:1:31946), FS);
play(player);

%% Energy calculation
Energy=sum(Y(1:1:31946).^2);
MyMessage=['Energy is equal to ' num2str(Energy) '.'];
msgbox(MyMessage);

%% Magnitude calculation
Magnitude=sum(abs(Y(1:1:31946)));
MyMessage=['Magnitude is equal to ' num2str(Magnitude) '.'];
msgbox(MyMessage);

%% Zero crossing rate calculation
ZC=0;
for i=1:1:length(Y)-1
   ZC=ZC+abs(sign(Y(i+1))-sign(Y(i)));
end
ZCR=ZC/(2*(length(Y))); 
MyMessage=['ZCR is equal to ' num2str(ZCR) '.'];
msgbox(MyMessage);

%% Autocorrelation for voiced و
[AutoCorrelation1,lags1,bounds1]=autocorr(Y(15170:1:16468),'NumLags',100);
subplot(1,2,1)
plot(AutoCorrelation1)
title('Autocorrelation for voiced و')


%% Autocorrelation for unvoiced ص
[AutoCorrelation2,lags2,bounds2]=autocorr(Y(17152:1:18402),'NumLags',100);
subplot(1,2,2)
plot(AutoCorrelation2)
title('Autocorrelation for unvoiced ص')
