class P
  @value = 0

  def initialize(value)
    @value = value
  end

  def hello2(x)
    @value + x
  end
end

p = P.new(123)
print(p.hello2(-10))
