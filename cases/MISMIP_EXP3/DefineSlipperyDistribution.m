function  [UserVar,C,m]=DefineSlipperyDistribution(UserVar,CtrlVar,MUA,time,s,b,h,S,B,rho,rhow,GF)

m=3; 

%  u=C*tau^m
%  C in kPa m^(-1/3) a^(1/3)

C=7.624e6/1e3/(365.25*24*60*60)^(1/3) +MUA.coordinates(:,1)*0;

C=C*1e-10;

end