function [i, k]=intervals(f, a, b, n)
i=[];
k=0;
const = (b-a)/n;
an=a;
bn=a+const;
fan=feval(f,a);
for ii=1:n
    fbn=feval(f,bn);
    if fan*fbn<0
        i(end+1, 1)=an;
        i(end, 2)=bn;
        k=k+1;
    end
    an=bn;
    bn=bn+const;
    fan=fbn;
end
i