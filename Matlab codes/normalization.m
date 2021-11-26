function J_normal=normalization(J)
J_normal=J/sqrt(sum(abs(J).^2)/length(J));