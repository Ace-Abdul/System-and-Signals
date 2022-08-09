plot(out.tout, out.x, 'k-', ...
out.tout,out.y, 'k--',...
out.tout,out.z, 'k:');

xlabel("Time (s)")
ylabel("Amplitude")
legend('x','y','x*y')
title("Two Input Signals and Their Product (aka40)")
print("Exercise4 Plot", "-dpng")