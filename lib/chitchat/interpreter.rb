require_relative 'parser'
require_relative 'runtime'
require_relative 'internal'
require_relative 'nodes_eval'

class Interpreter
  def initialize
    @parser = Parser.new
  end
  
  def eval(code, debug=false)
      nodes = @parser.parse(code)
      if debug
        nodes.show
      end
      nodes.eval(Runtime)
  end
end

