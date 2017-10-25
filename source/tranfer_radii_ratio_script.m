syms rm1;
for r21 = 12 : 0.01 : 12.5
   S = vpasolve(sqrt(2 / (1 + 1 / r21)) - 1 + 1 / sqrt(r21) * (1 - sqrt(2 / (1 + r21))) ==abs(sqrt(2-2/(1+rm1))-1)+abs(sqrt(2/rm1-2/(r21+rm1))- sqrt(2/rm1-2/(1+rm1)))+abs( - 1/sqrt(r21) + sqrt(2/r21-2/(r21+rm1))), rm1, [0  Inf]);
   if(S > r21)
       disp(sprintf('(%d,%d)', r21, S));
   end
end