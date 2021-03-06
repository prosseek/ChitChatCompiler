require File.dirname(__FILE__) + '/test_helper'
require "runtime"

class RuntimeTest < Test::Unit::TestCase
  def test_get_constant
    assert_not_nil Runtime["Object"]
  end
  
  def test_create_an_object
    assert_equal Runtime["Object"], Runtime["Object"].new.runtime_class
  end
  
  def test_create_an_object_mapped_to_ruby_value
    assert_equal 32, Runtime["Number"].new_with_value(32).ruby_value
  end
  
  def test_lookup_method_in_class
    assert_not_nil Runtime["Object"].lookup("print")
    assert_raise(RuntimeError) { Runtime["Object"].lookup("non-existant") }
  end
  
  def test_call_method
    # Mimic Object.new in the language
    object = Runtime["Object"].send_message("new")
    
    assert_equal Runtime["Object"], object.runtime_class # assert object is an Object
  end
  
  def test_a_class_is_a_class
    assert_equal Runtime["Class"], Runtime["Number"].runtime_class
  end
  
  def test_number_add
    ### Exercise: Compute 1 + 2 using the Runtime API
    one = Runtime["Number"].new_with_value(1)
    two = Runtime["Number"].new_with_value(2)
    # 1.+(2)
    assert_equal 3, one.send_message("+", [two]).ruby_value
  end
end