% hypothesis 1
m=12968;
alpha1=0.01 ;
c=ones(m,1);
 x1=[ones(12968,1), bedrooms(1:12968,:),bathrooms(1:12968,:),sqft_living(1:12968,:),sqft_lot(1:12968,:),floors(1:12968,:),waterfront(1:12968,:),view1(1:12968,:),condition(1:12968,:),grade(1:12968,:),sqft_above(1:12968,:),sqft_basement(1:12968,1),yr_built(1:12968,:),yr_renovated(1:12968,:),zipcode(1:12968,:),lat(1:12968,:),long(1:12968,:),sqft_living15(1:12968,:),sqft_lot15(1:12968,:)];
n=length(x1(1,:));
 xcv1=[ones(4323,1), bedrooms(12969:17291,:),bathrooms(12969:17291,:),sqft_living(12969:17291,:),sqft_lot(12969:17291,:),floors(12969:17291,:),waterfront(12969:17291,:),view1(12969:17291,:),condition(12969:17291,:),grade(12969:17291,:),sqft_above(12969:17291,:),sqft_basement(12969:17291,:),yr_built(12969:17291,:),yr_renovated(12969:17291,:),zipcode(12969:17291,:),lat(12969:17291,:),long(12969:17291,:),sqft_living15(12969:17291,:),sqft_lot15(12969:17291,:)];
 ncv=length(xcv1(1,:));
newtheta1=zeros(n,1);
x1=normalizedata(x1,n);
xcv1=normalizedata(xcv1,ncv);
Y=price(1:12968,:)/mean(price(1:12968,:));
Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
J1=cost(x1,Y,newtheta1)
[newtheta1,J_history1]=GradientDescentAlgorithm(x1,Y,newtheta1,alpha1,J1);


%  thetaNormal=Normalization(x1,price)

 plot(1:length(J_history1) , J_history1 , '-b');
 JFINAL=cost(xcv1,Ycv,newtheta1)
 xtest=[ones(4322,1),bedrooms(17292:21613,:),bathrooms(17292:21613,:),sqft_living(17292:21613,:),sqft_lot(17292:21613,:),floors(17292:21613,:),waterfront(17292:21613,:),view1(17292:21613,:),condition(17292:21613,:),grade(17292:21613,:),sqft_above(17292:21613,:),sqft_basement(17292:21613,:),yr_built(17292:21613,:),yr_renovated(17292:21613,:),zipcode(17292:21613,:),lat(17292:21613,:),long(17292:21613,:),sqft_living15(17292:21613,:),sqft_lot15(17292:21613,:)];
 ntest=length(xtest(1,:));
xtest=normalizedata(xtest,ntest);
Ytest=price(17292:21613,:)/mean(price(17292:21613,:));
JFINALtest=cost(xtest,Ytest,newtheta1)
%  Hypothesis 2
alpha2=0.01;
B=[bedrooms(1:12968,:),bathrooms(1:12968,:),floors(1:12968,:),view1(1:12968,:),condition(1:12968,:),grade(1:12968,:)];
V=[sqft_living(1:12968,:),sqft_lot(1:12968,:),waterfront(1:12968,:),sqft_above(1:12968,:),sqft_basement(1:12968,1),yr_built(1:12968,:),yr_renovated(1:12968,:),zipcode(1:12968,:),lat(1:12968,:),long(1:12968,:),sqft_living15(1:12968,:),sqft_lot15(1:12968,:)];
Bcv1=[bedrooms(12969:17291,:),bathrooms(12969:17291,:),floors(12969:17291,:),view1(12969:17291,:),condition(12969:17291,:),grade(12969:17291,:)];
Vcv1=[sqft_living(12969:17291,:),sqft_lot(12969:17291,:),waterfront(12969:17291,:),sqft_above(12969:17291,:),sqft_basement(12969:17291,:),yr_built(12969:17291,:),yr_renovated(12969:17291,:),zipcode(12969:17291,:),lat(12969:17291,:),long(12969:17291,:),sqft_living15(12969:17291,:),sqft_lot15(12969:17291,:)];
% x2=[ones(12968,1),B,B.^2,V];
% n2=length(x2(1,:));
% newtheta2=zeros(n2,1);
% x2=normalizedata(x2,n2);
% xcv2=[ones(4323,1),Bcv1,Bcv1.^2,Vcv1];
% ncv2=length(x2(1,:));
% xcv2=normalizedata(xcv2,ncv2);
% Y=price(1:12968,:)/mean(price(1:12968,:));
% Ycv=price(12969:17291,:)/mean(price(12969:17291,:));9
% J2=cost(x2,Y,newtheta2)
% [newtheta2,J_history2]=GradientDescentAlgorithm(x2,Y,newtheta2,alpha2,J2);
% JFINAL2=cost(xcv2,Ycv,newtheta2)
% plot(1:length(J_history2) , J_history2 , '-b');
% 
% 
% x22=[ones(12968,1),B,B.^2,B.^3,B.^4,V];
% n22=length(x22(1,:));
% newtheta22=zeros(n22,1);
% x22=normalizedata(x22,n22);
% xcv22=[ones(4323,1),Bcv1,Bcv1.^2,Bcv1.^3,Bcv1.^4,Vcv1];
% ncv22=length(x22(1,:));
% xcv22=normalizedata(xcv22,ncv22);
% Y=price(1:12968,:)/mean(price(1:12968,:));
% Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
% J22=cost(x22,Y,newtheta22)
% [newtheta22,J_history22]=GradientDescentAlgorithm(x22,Y,newtheta22,alpha2,J22);
% JFINAL22=cost(xcv22,Ycv,newtheta22)
x23=[ones(12968,1),B,B.^2,B.^3,B.^4,B.^5,B.^6,B.^7,B.^8,V];
n23=length(x23(1,:));
newtheta23=zeros(n23,1);
x23=normalizedata(x23,n23);
xcv23=[ones(4323,1),Bcv1,Bcv1.^2,Bcv1.^3,Bcv1.^4,Bcv1.^5,Bcv1.^6,Bcv1.^7,Bcv1.^8,Vcv1];
ncv23=length(x23(1,:));
xcv23=normalizedata(xcv23,ncv23);
Y=price(1:12968,:)/mean(price(1:12968,:));
Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
J23=cost(x23,Y,newtheta23)
[newtheta23,J_history23]=GradientDescentAlgorithm(x23,Y,newtheta23,alpha2,J23);
JFINAL23=cost(xcv23,Ycv,newtheta23)
Btest=[bedrooms(17292:21613,:),bathrooms(17292:21613,:),floors(17292:21613,:),view1(17292:21613,:),condition(17292:21613,:),grade(17292:21613,:)];
Vtest=[sqft_living(17292:21613,:),sqft_lot(17292:21613,:),waterfront(17292:21613,:),sqft_above(17292:21613,:),sqft_basement(17292:21613,:),yr_built(17292:21613,:),yr_renovated(17292:21613,:),zipcode(17292:21613,:),lat(17292:21613,:),long(17292:21613,:),sqft_living15(17292:21613,:),sqft_lot15(17292:21613,:)];
xtest2=[ones(4322,1),Btest,Btest.^2,Btest.^3,Btest.^4,Btest.^5,Btest.^6,Btest.^7,Btest.^8,Vtest];
ntest2=length(xtest2(1,:));
xtest2=normalizedata(xtest2,ntest2);
Ytest2=price(17292:21613,:)/mean(price(17292:21613,:));
JFINALtest2=cost(xtest2,Ytest2,newtheta23)
plot(1:length(J_history23) , J_history23 , '-b');
% HYPOTHESIS 3 
 alpha3=0.01;
 B2=[sqft_living(1:12968,:),sqft_lot(1:12968,:),floors(1:12968,:),waterfront(1:12968,:)];
 V2=[bedrooms(1:12968,:),bathrooms(1:12968,:),view1(1:12968,:),condition(1:12968,:),grade(1:12968,:),sqft_above(1:12968,:),sqft_basement(1:12968,1),yr_built(1:12968,:),yr_renovated(1:12968,:),zipcode(1:12968,:),lat(1:12968,:),long(1:12968,:),sqft_living15(1:12968,:),sqft_lot15(1:12968,:)];
 Bcv2=[sqft_living(12969:17291,:),sqft_lot(12969:17291,:),floors(12969:17291,:),waterfront(12969:17291,:)];
 Vcv2=[bedrooms(12969:17291,:),bathrooms(12969:17291,:),view1(12969:17291,:),condition(12969:17291,:),grade(12969:17291,:),sqft_above(12969:17291 ,:),sqft_basement(12969:17291,:),yr_built(12969:17291,:),yr_renovated(12969:17291,:),zipcode(12969:17291,:),lat(12969:17291,:),long(12969:17291,:),sqft_living15(12969:17291,:),sqft_lot15(12969:17291,:)];
%  x3=[ones(12968,1),B2,B2.^2,V2];
% n3=length(x3(1,:));
% newtheta3=zeros(n3,1);
% x3=normalizedata(x3,n3);
% xcv3=[ones(4323,1),Bcv2,Bcv2.^2,Vcv2];
% ncv3=length(x3(1,:));
% xcv3=normalizedata(xcv3,ncv3);
% Y=price(1:12968,:)/mean(price(1:12968,:));
% Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
% J3=cost(x3,Y,newtheta3)
% [newtheta3,J_history3]=GradientDescentAlgorithm(x3,Y,newtheta3,alpha3,J3);
% JFINAL3=cost(xcv3,Ycv,newtheta3)
 x32=[ones(12968,1),B2,B2.^2,B2.^3,B2.^4,V2];
n32=length(x32(1,:));
newtheta32=zeros(n32,1);
x32=normalizedata(x32,n32);
xcv32=[ones(4323,1),Bcv2,Bcv2.^2,Bcv2.^3,Bcv2.^4,Vcv2];
ncv32=length(x32(1,:));
xcv32=normalizedata(xcv32,ncv32);
Y=price(1:12968,:)/mean(price(1:12968,:));
Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
J32=cost(x32,Y,newtheta32)
[newtheta32,J_history32]=GradientDescentAlgorithm(x32,Y,newtheta32,alpha3,J32);
JFINAL32=cost(xcv32,Ycv,newtheta32)
Btest2=[sqft_living(17292:21613,:),sqft_lot(17292:21613,:),floors(17292:21613,:),waterfront(17292:21613,:)];
Vtest2=[ bedrooms(17292:21613,:),bathrooms(17292:21613,:),view1(17292:21613,:),condition(17292:21613,:),grade(17292:21613,:),sqft_above(17292:21613,:),sqft_basement(17292:21613,:)];
xtest3=[ones(4322,1),Btest2,Btest2.^2,Btest2.^3,Btest2.^4,Vtest2];
ntest3=length(xtest3(1,:));
xtest3=normalizedata(xtest3,ntest3);
Ytest3=price(17292:21613,:)/mean(price(17292:21613,:));
plot(1:length(J_history32) , J_history32 , '-b');
% JFINALtest3=cost(xtest3,Ytest3,newtheta32)

%  x33=[ones(12968,1),B2,B2.^2,B2.^3,B2.^4,B2.^5,B2.^6,B2.^7,B2.^8,V2];
% n33=length(x33(1,:));
% newtheta33=zeros(n33,1);
% x33=normalizedata(x33,n33);
% xcv33=[ones(4323,1),Bcv2,Bcv2.^2,Bcv2.^3,Bcv2.^4,Bcv2.^5,Bcv2.^6,Bcv2.^7,Bcv2.^8,Vcv2];
% ncv33=length(x32(1,:));
% xcv33=normalizedata(xcv33,ncv33);
% Y=price(1:12968,:)/mean(price(1:12968,:));
% Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
% J33=cost(x33,Y,newtheta33)
% [newtheta33,J_history33]=GradientDescentAlgorithm(x33,Y,newtheta33,alpha3,J33);
% JFINAL33=cost(xcv33,Ycv,newtheta33)
% HYPOTHESIS 4

 alpha4=0.01;
 B3=[yr_built(1:12968,:),yr_renovated(1:12968,:),zipcode(1:12968,:),lat(1:12968,:),long(1:12968,:),sqft_living15(1:12968,:),sqft_lot15(1:12968,:)];
 V3=[ bedrooms(1:12968,:),bathrooms(1:12968,:),sqft_living(1:12968,:),sqft_lot(1:12968,:),floors(1:12968,:),waterfront(1:12968,:),view1(1:12968,:),condition(1:12968,:),grade(1:12968,:),sqft_above(1:12968,:),sqft_basement(1:12968,:)];
 Bcv3=[yr_built(12969:17291,:),yr_renovated(12969:17291,:),zipcode(12969:17291,:),lat(12969:17291,:),long(12969:17291,:),sqft_living15(12969:17291,:),sqft_lot15(12969:17291,:)];
 
 Vcv3=[bedrooms(12969:17291,:),bathrooms(12969:17291,:),sqft_living(12969:17291,:),sqft_lot(12969:17291,:),floors(12969:17291,:),waterfront(12969:17291,:),view1(12969:17291,:),condition(12969:17291,:),grade(12969:17291,:),sqft_above(12969:17291,:),sqft_basement(12969:17291,:)];

 x4=[ones(12968,1),B3,B3.^2,V3];
n4=length(x4(1,:));
newtheta4=zeros(n4,1);
x4=normalizedata(x4,n4);
xcv4=[ones(4323,1),Bcv3,Bcv3.^2,Vcv3];
ncv4=length(xcv4(1,:));
xcv4=normalizedata(xcv4,ncv4);
Y=price(1:12968,:)/mean(price(1:12968,:));
Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
J4=cost(x4,Y,newtheta4)
[newtheta4,J_history4]=GradientDescentAlgorithm(x4,Y,newtheta4,alpha4,J4);
JFINAL4=cost(xcv4,Ycv,newtheta4)
Btest3=[yr_built(17292:21613,:),yr_renovated(17292:21613,:),zipcode(17292:21613,:),lat(17292:21613,:),long(17292:21613,:),sqft_living15(17292:21613,:),sqft_lot15(17292:21613,:)];
 Vtest3=[ bedrooms(17292:21613,:),bathrooms(17292:21613,:),sqft_living(17292:21613,:),sqft_lot(17292:21613,:),floors(17292:21613,:),waterfront(17292:21613,:),view1(17292:21613,:),condition(17292:21613,:),grade(17292:21613,:),sqft_above(17292:21613,:),sqft_basement(17292:21613,:)];
xtest4=[ones(4322,1),Btest3,Btest3.^2,Vtest3];
ntest4=length(xtest4(1,:));
xtest4=normalizedata(xtest4,ntest4);
Ytest4=price(17292:21613,:)/mean(price(17292:21613,:));
JFINALtest4=cost(xtest4,Ytest4,newtheta4)
plot(1:length(J_history4) , J_history4 , '-b');

%  x42=[ones(12968,1),B3,B3.^2,B3.^3,B3.^4,V3];
% n42=length(x42(1,:));
% newtheta42=zeros(n42,1);
% x42=normalizedata(x42,n42);
% xcv42=[ones(4323,1),Bcv3,Bcv3.^2,Bcv3.^3,Bcv3.^4,Vcv3];
% ncv42=length(xcv42(1,:));
% xcv42=normalizedata(xcv42,ncv42);
% Y=price(1:12968,:)/mean(price(1:12968,:));
% Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
% J42=cost(x42,Y,newtheta42)
% [newtheta42,J_history42]=GradientDescentAlgorithm(x42,Y,newtheta42,alpha4,J42);
% JFINAL42=cost(xcv42,Ycv,newtheta42)
%  x43=[ones(12968,1),B3,B3.^2,B3.^3,B3.^4,B3.^5,B3.^6,B3.^7,B3.^8,V3];
% n43=length(x43(1,:));
% newtheta43=zeros(n43,1);
% x43=normalizedata(x43,n43);
% xcv43=[ones(4323,1),Bcv3,Bcv3.^2,Bcv3.^3,Bcv3.^4,Bcv3.^5,Bcv3.^6,Bcv3.^7,Bcv3.^8,Vcv3];
% ncv43=length(xcv42(1,:));
% xcv43=normalizedata(xcv43,ncv43);
% Y=price(1:12968,:)/mean(price(1:12968,:));
% Ycv=price(12969:17291,:)/mean(price(12969:17291,:));
% J43=cost(x43,Y,newtheta43)
% [newtheta43,J_history43]=GradientDescentAlgorithm(x43,Y,newtheta43,alpha4,J43);
% JFINAL43=cost(xcv43,Ycv,newtheta43)




