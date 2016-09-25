f = Fiber.new do |x|
  p x
  p 1
  x = Fiber.yield 10
  p x
  p 2
  x = Fiber.yield 20
  p x
  p 3
  x = Fiber.yield 30
  p x
  p 4
  40
end

require 'fiber'
p f.resume 999
p f.resume 100
p f.resume 200
p f.alive?
p f.resume 300
p f.alive?
