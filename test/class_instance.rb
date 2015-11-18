z = -10
def g(x)
  x
end

class P
  @@k = 0
  @x = 10
  @value = 1000

  def hello2(x)
    z + @x + x + g(10) + @value  + @@k
    @@k = @@k + 1
  end
end

p = P.new
q = P.new
print(p.hello2(-10))
print(p.hello2(-10))
#print(q.hello2(0))