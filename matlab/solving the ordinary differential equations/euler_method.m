function y = euler_method(a, b, n, y0)
  h = (b-a)/n;
  y = y0;
  for i = 1:n
    y = y + h * y0;# assumed f(xi,yi) = yi
  end
end
