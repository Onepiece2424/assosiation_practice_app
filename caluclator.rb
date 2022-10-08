class Calculator
  attr_reader :history

  def initialize
    @history = []
  end

  def add(a, b)
    @history << "#{a} + #{b}"
    a + b
  end
end

calculator = Calculator.new
calculator.add(2, 3) #=> 5   (addメソッドではa + bが返り値のため)
calculator.add(4, 5) #=> 9   (addメソッドではa + bが返り値のため)
# これまでの計算履歴を返す
calculator.history   #=> ["2 + 3", "4 + 5"]
