require 'continuation'

c = callcc do |cont|
  p 1
  p 2
  cont.call 10
  p 3
end

p c
