t=0:0.01:2*pi;

r=max(sin(4*t),0);  %elke r<0 wordt vervangen door 0
polarplot(r) 