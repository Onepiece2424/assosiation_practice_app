class Receipt
  class << self
    def create_receipt_xyz
      self.new("ストアXYZ")
    end
  end
  
  def initialize(name)
    @name = name   # インスタンス変数の初期化
    @lines = []
  end

  def lines=(lines)
    @lines = lines
  end

  def calc
    total = 0
    @lines.each do |line|
      total += line[:price] * line[:num]
    end
    total
  end

  def output
    puts "レシート #{@name}"
    @lines.each do |line|
      puts "#{line[:name]} #{line[:price]}円 x #{line[:num]}"
    end
    puts "合計金額: #{calc}円"
  end
end

r = Receipt.new("ストアA")
r.lines = [{name: "卵", price: 200, num: 1},
  {name: "大根", price: 100, num: 2}]

r.output
