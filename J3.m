function e = J3(Ct,Cs,UA)
if Ct<=Cs
    e = J3_Ct(Ct/Cs,UA/Ct);
else
    e = J3_Cs(Cs/Ct,UA/Cs);
end
end