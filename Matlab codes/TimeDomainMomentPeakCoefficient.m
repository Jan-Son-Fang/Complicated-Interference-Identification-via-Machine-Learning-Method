function a_4 = TimeDomainMomentPeakCoefficient(J_normal)
mu=mean(abs(J_normal));
sig=std(abs(J_normal));
a_4=mean(((abs(J_normal)-mu)).^4)/sig^4;