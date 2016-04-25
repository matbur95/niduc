function [ber, err] = ARQ(n, k, sigma)
  ber = 0;
  err = 0;

  G = generator(n);
  E = encoder(G, k);
  C = canal(E, sigma);

  c = n / k;
  for i = 1 : c
    b = i*(k+1)-k;
    e = i*(k+1);
    d = decoder(C(b:e));
    while d == 1
      ber += 1;
      C(b:e) = canal(E(b:e), sigma);
      d = decoder(C(b:e));
    end
  end
end