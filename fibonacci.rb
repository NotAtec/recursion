def fibs_rec(n, fib1 = 0, fib2 = 0)
  return fib1 if n == 0
  return fib(n - 1, 1, 0) if fib1 == 0
  fib(n - 1, fib1 + fib2, fib1)
end