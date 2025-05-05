function [n, y]= raphson(x0,ep)
  n = 0;
  f = @(x) x^6 - x - 1;
  df = @(x) 6*x^5 - 1;
  x = x0 - f(x0)/df(x0);
  while abs(x-x0) >= ep
    x0 = x;
    x = x0 - f(x0)/df(x0);
    n = n + 1;
  end
  y = x
end
