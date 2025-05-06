function Pn = lagrange_poly(A, x)
    syms x # add this to see the polynomial
    n = length(A);
    f = @(t) exp(t);
    S = 0;
    for i = 1:n
      L = 1;
      for j = 1:n
        if j ~= i
          L = L * (x - A(j)) / (A(i) - A(j));
        end
      end
      Ln = L * f(A(i));
      S = S + Ln;
    end
    Pn = S;

end
