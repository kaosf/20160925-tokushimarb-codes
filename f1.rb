class C
  def initialize
    @cnt = 0

    @x = 0
    @y = 'abc'
  end

  def resume
    @cnt += 1
    if @cnt <= 5
      @x += 1
      @x
    else
      @y
    end
  end
end

c = C.new
10.times do
  p c.resume
end
