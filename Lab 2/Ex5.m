Days=60;
Stockinfo = readtable('table.csv')
StockPrice = Stockinfo.AdjClose( (end - Days+1):end);

n=[1:Days]'-1;
data=[n, StockPrice]
figure(1); clf
plot(0:(Days-1), StockPrice(1:Days), 'k.-');
hold on
plot(4:(Days-1), out.ma(5:Days), 'r.--');
legend("Price[n]", 'ma[n]');
xlabel("Day[n]");
ylabel("Stock Prince ($)");
title("Stock Price and Moving Average vs. Day (aka40)");
print("Ex5Plot",'-dpng')