function [n, y]= bisection(a,b,ep)
  n=0;
  while abs(b-a)>=ep
    c = (b+a)/2;
    if f(a)*f(c)<0
      b = c;
    elseif f(c)*f(b)<0
      a = c;
    end
    n = n + 1;
  end
  c = (b+a)/2;
  y = c


end
