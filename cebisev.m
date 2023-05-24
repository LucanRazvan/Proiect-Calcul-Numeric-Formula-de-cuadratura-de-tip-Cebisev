function I=cebisev(f,n)
km=2/5;%constanta km =(1/n+1)*integrala din ro dx in cazul nostru ro=1
A=zeros(1,n+2);%initializam cu 0 vectorul A
A(1)=1;
A(2)=-(n+1)/6;
for j=4:2:n+2%se incepe cu urmatoarea pozitie para
    for i=1:j/2
    termen=A(i*2)./(2*(j-i)+1);
    end
    A(j)=-(n+1/2*j)*sum(termen);
end
a=roots(A);%se calculeaza radacinile polinomului
I=km.*sum(f(a));
end