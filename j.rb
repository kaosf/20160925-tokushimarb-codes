def f1 x, a
  x == 0 ? a : f1(x - 1, x * a)
end

def f1_loop x, a
  loop do
    if x == 0
      return a
    else
      x, a = x - 1, x * a
      # tmp = x
      # x = tmp - 1
      # a = tmp * a
    end
  end
end

def f x
  f1_loop x, 1
end

p f 0
p f 1
p f 2
p f 3
p f 100
p f 1000
p f 100000
