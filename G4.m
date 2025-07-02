function e = G4(Ct,Cs,UA)
if Ct<=Cs
    e = G4_Ct(Ct/Cs,UA/Ct);
else
    e = G4_Cs(Cs/Ct,UA/Cs);
end
end