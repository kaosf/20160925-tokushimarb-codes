def f
  p 1
  p 2
  yield 10
  p 3
end

f { |x| p x }
