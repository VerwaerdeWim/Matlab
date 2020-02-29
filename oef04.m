z=sqrt(2)*exp((3*pi*i)/4);

real(z)
imag(z)

theta=angle(conj(z));
r=abs(conj(z));

sprintf("%f*e^(%f*i)",r,theta)
conj(z)