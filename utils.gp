u_ispalindrome(x) =
{
  x == fromdigits(Vecrev(digits(x)))
}

u_isbinarypalindrome(x) =
{
  b = binary(x);
  b == Vecrev(b)
}

u_nextsunday(c) =
{
  month = [31,28,31,30,31,30,31,31,30,31,30,31];
  y = c[1]; m = c[2]; d = c[3];
  if(y % 4 == 0 && (y % 100 != 0 || y % 400 == 0), month[2] = 29);
  d += 7;
  if(d > month[m], d = d % month[m]; m += 1);
  if(m > 12, m = 1; y += 1);
  [y, m, d]
}

u_abundantnumber(n) =
{
  if(vecsum(divisors(n)) > 2*n, 1, 0)
}

u_eulercandidate(n, a, b) =
{
  n^2 + a*n + b
}

u_cyclelength(n) =
{
  r = 10; l = 0;
  while(r != 10 || l < 1, r = (r%n) * 10; l += 1);
  l
}

u_ispandigital(x, n) =
{
  r = 1;
  s = vecsort(digits(x));
  if(length(s) != n, r = 0);
  if(length(s) == n,
    for(i = 1, n, if(s[i] != i, r = 0; break)));
  r
}

u_wordvalue(w) =
{
  v = 0;
  pos = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];
  s = strsplit(w);
  for(i = 1, #s,
    for(j = 1, 26, if(pos[j] == s[i], v += j)));
  v
}

u_ispentagonal(n) =
{
  k = (sqrt(24*n + 1) + 1)/6;
  return(k == floor(k) && k*(3*k-1)/2 == n);
}
