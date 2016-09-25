def f x
  x == 0 ? 1 : x * f(x - 1)
end

p f 0
p f 1
p f 2
p f 3
p f 100
p f 1000
p f 100000
