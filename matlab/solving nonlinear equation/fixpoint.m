function [n, y]= fixpoint(x0, ep)
  n = 1;
  g = @(x) 2/(x^2 + 4);
  x = g(x0);
  while abs(x-x0) >= ep
    x0 = x;
    x = g(x0);
    n = n + 1;
  end
  y = x
end
