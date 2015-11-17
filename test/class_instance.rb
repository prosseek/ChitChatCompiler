class P
  @x = 10
  def hello2(x)
    x + @x
  end
end

p = P.new(1)
print(p.hello2(1))