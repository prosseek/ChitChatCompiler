class P
  def hello2(x)
    -123
  end
end

class X < P
  def hello3(x)
    -1234
  end
end

class A < X
  def hello(x)
    410
  end

	def b(x)
    "Hello, it's test to check what is going on"
    print(hello(10))
    print(hello2(10))
    x + 10 # Hello
	end
end

x = X.new()
#print(a.id())
print(x.hello2(10))
a = A.new()
print(a.hello2(10))
# x = a.b(100)
# print(x)
#x = a.hello2(10)
#print(x)

