f = Fiber.new do
  x = 0
  y = 'abc'
  5.times do
    x += 1
    Fiber.yield x
  end
  loop do
    Fiber.yield y
  end
end

10.times do
  p f.resume
end
