def fibs(n)
  fib1, fib2 = 0, 0
  n.times do
    if fib1 == 0
      fib1 = 1
      next
    end
    fib1, fib2 = fib1 + fib2, fib1
  end
  fib1
end

def fibs_rec(n, fib1 = 0, fib2 = 0)
  return fib1 if n == 0
  return fibs_rec(n - 1, 1, 0) if fib1 == 0
  fibs_rec(n - 1, fib1 + fib2, fib1)
end

p fibs(8)
p fibs_rec(8)