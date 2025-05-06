function y = range_kuta_sec(a, b, n, y0)
  h = (b-a)/n;
  y = y0;
  for i = 1:n
    K1 = y;
    K2 = y + (h * K1);
    y = y + (h / 2) * (K1 + K2);
  end
end
