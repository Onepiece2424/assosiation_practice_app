class Point
  attr_accessor :x, :y

  # 二項演算子のメソッド
  def initialize(x=0, y=0)
    @x, @y = x, y
  end

  # def inspect # pメソッドで「（x,y）」と表示する
  #   "(#{x}, #{y})"
  # end

  # def +(other) # x,yのそれぞれ足す
  #   self.class.new(x + other.x, y + other.y)
  # end

  # def -(other) # x, yをそれぞれひく
  #   self.class.new(x - other.x, y - other.y)
  # end

  # # 単項演算子のメソッド
  # def +@
  #   dup  # 自分の複製を返す
  # end

  # def -@
  #   self.class.new(-x, -y) # x, yのそれぞれの正負を逆にする
  # end

  # def ~@
  #   self.class.new(-y, -x) # 90度反転させた座標を返す
  # end

  # 添字メソッド
  def [](index)
    case index
    when 0
      x
    when 1
      y
    else
      raise ArgumentError, "out of range `#{index}`"
    end
  end

  def []=(index, val)
    case index
    when 0
      self.x = val
    when 1
      self.y = val
    else
      raise ArgumentError, "out of range `#{index}`"
    end
  end
end

# 二項演算子出力値
# point0 = Point.new(3, 6)
# point1 = Point.new(1, 8)

# p point0
# p point1
# p point0 + point1
# p point0 - point1

#単項演算子出力値
# point = Point.new(3, 6)
# p +point
# p -point
# p ~point

# 添字メソッドの値の出力
point = Point.new(3, 6)
p point[0]              #=> 3
p point[1] = 2          #=> 2
p point[1]              #=> 2
p point[2]              #=> 引数が2つしかないのでArgumentError
