z = 0
def g(x)
  x
end

class P
  @@k = 4
  @x = 10
  def hello2(x)
    @@k = @@k + 1
    z + x + @x + @@k + g(10)
  end
end

p = P.new(1)
q = P.new(10)
#print(p.hello2(1))
print(p.hello2(0))
print(q.hello2(0))