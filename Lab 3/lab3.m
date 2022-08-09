x = linspace(-20,20,500);

y=4000+2000*(1-sin(2*pi*2000/8000*x));

plot(x,y)
xlabel("n")
ylabel("d(n)")
print("-dpng","Fig2")