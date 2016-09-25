def f1 x, a
  x == 0 ? a : f1(x - 1, x * a)
end

def f x
  f1 x, 1
end

p f 0
p f 1
p f 2
p f 3
p f 100
p f 1000
# p f 100000
