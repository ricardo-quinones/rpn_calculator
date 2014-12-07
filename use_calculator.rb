require_relative 'rpn_calculator'

calculator = RPNCalculator.new

loop do
  puts "Enter an expression to evaluate:"
  puts calculator.evaluate(gets.chomp)
end