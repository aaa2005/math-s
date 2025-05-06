function S = simpson(a, b, n)
  h= (b-a)/(2*n);
  f = @(x) x^2;
  S = 0;
  for i = 3:2:(2*n) - 1
    xi = a + i * h;
    S = S + 4 * f(xi);
  end
  for i = 2:2:(2*n) - 2
    xi = a + i * h;
    S = S + 2 * f(xi);
  end
  S = h * ( S + f(a) + f(b) ) / 3;
end
