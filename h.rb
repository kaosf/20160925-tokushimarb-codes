def f1 x, c
  x == 0 ? c.call(1) : f1(x - 1, -> (y) { c.call(x * y) })
end

@id = -> (x) { x }

def f x
  f1 x, @id
end

p f 0
p f 1
p f 2
p f 3
p f 100
p f 1000
# p f 100000
