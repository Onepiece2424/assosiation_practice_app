class String
  def count_word
    arry = self.split(" ") # selfを空白文字列で、配列に分解する
    return arr.size # 分解後の配列の要素数を返す
  end
end

str = "Just Another Ruby Newbie"
p str.count_word
