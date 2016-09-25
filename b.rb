f = Fiber.new do
  p 1
  p 2
  Fiber.yield 10
  p 3
end

p f.resume
