class RPNCalculator
  attr_accessor :calculator

  def evaluate(string_expression)
    self.calculator = []
    tokenize(string_expression).each do |value|
      if value.is_a?(Float)
        @calculator << value
      else
        @calculator << perform(value)
      end
    end

    @calculator.first
  end

  private

  def tokenize(string_expression)
    string_expression.gsub(/\s+/, ' ').split(' ').map do |token|
      token =~ /\d[\d]*/ ? token.to_f : token.to_sym
    end
  end

  def perform(operation)
    nums = numbers_to_operate_on

    nums.pop.send(operation, nums.pop)
  end

  def pop
    value = @calculator.pop
    raise "calculator is empty" if value.nil?
    value
  end

  def numbers_to_operate_on
    [pop, pop]
  end
end