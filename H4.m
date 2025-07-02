function e = H4(Ct,Cs,UA)
if Ct<=Cs
    e = H4_Ct(Ct/Cs,UA/Ct);
else
    e = H4_Cs(Cs/Ct,UA/Cs);
end
end