function S = trapezoidal(a, b, n)
  h= (b-a)/n;
  f = @(x) x^2;
  xi = a + i * h;
  S = 0;
  for i = 1:n - 1
    xi = a + i * h;
    S = S + h * f(xi);
  end
  S = S + h * ( f(a) + f(b) ) / 2;
end
