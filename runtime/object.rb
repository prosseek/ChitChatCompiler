# Represents an Awesome object instance in the Ruby world.
class RObject
  attr_accessor :runtime_class, :ruby_value, :id, :instance_vars

  # Each object have a class (named runtime_class to prevent errors with Ruby's class
  # method). Optionaly an object can hold a Ruby value (eg.: numbers and strings).
  def initialize(runtime_class, ruby_value=self)
    @runtime_class = runtime_class
    @ruby_value = ruby_value

    ## Not fully tested
    @instance_vars = {}
    @id = self.id
  end

  # Call a method on the object.
  def send_message(method, arguments=[])
    # Like a typical Class-based runtime model, we store methods in the class of the
    # object.
    @runtime_class.lookup(method).call(self, arguments)
  end

end