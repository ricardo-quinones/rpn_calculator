require './rpn_calculator'

describe RPNCalculator do
  let(:calculator) { RPNCalculator.new }

  it "does simple addition" do
    expect(calculator.evaluate("3 5 +")).to eq(8)
  end

  it "does simple subtraction" do
    expect(calculator.evaluate("3 5 -")).to eq(-2)
  end

  it "does simple multiplication" do
    expect(calculator.evaluate("3 5 *")).to eq(15)
  end

  it "does simple division" do
    expect(calculator.evaluate("10 5 /")).to eq(2)
  end

  it "does more complex operations" do
    expect(calculator.evaluate("7 3 + 2 *")).to eq(20)
    expect(calculator.evaluate("1 2 3 * +")).to eq(7)
    expect(calculator.evaluate("7 3 3 / - 2 *")).to eq(12)
  end
end