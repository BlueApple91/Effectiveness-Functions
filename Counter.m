function e = Counter(Cr,NTU)
if Cr==1
    e=NTU/(1+NTU);
else
    e=(1-exp(-NTU*(1-Cr)))/(1-Cr*exp(-NTU*(1-Cr)));
end
end