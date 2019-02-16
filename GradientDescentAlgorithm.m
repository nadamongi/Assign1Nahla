function [ newtheta , J_history] = GradientDescentAlgorithm( x,price,newtheta,alpha,J )
m=length(price);
% J_history=zeros(iterations,1);
R=1;
K=1;
J_history(K)=J;



while R==1 ,
%     newtheta=zeros(size(X,2),1);
    newtheta=newtheta-(alpha/m)*x'*(x*newtheta-price);
    K=K+1;
    J_history(K)=cost(x,price,newtheta);
    if J_history(K-1)-J_history(K)<0
    break
    end
q=(J_history(K-1)-J_history(K))./J_history(K-1);
if q <.000001;
    R=0;
end
end
   
   
    


end


