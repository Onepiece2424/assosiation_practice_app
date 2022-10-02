# ブロック付きメソッド
# def myloop
#   while true
#     yield      # ブロックを実行する
#   end
# end

# num = 1       # numの初期化
# myloop do
#   puts "num is #{num}"    # numの表示
#   break if num > 10       # numが10を超えた時に抜ける
#   num *= 2                # numを2倍にする
# end

# 引数の数が不定なメソッドの書き方
=begin def foo(*args)
  args
end

p foo(1, 2, 3)

# 設定した引数の数でない時にメソッドを実行した時
def meth (arg, *args)
  [arg, args]
end

p meth(1)
p meth(1, 2, 3).flatten
p meth([], 1)
p meth(0, 1)

def a(a, *b, c)
  [a, b, c]
end

p a(1, 2, 3, 4, 5)
p a(1, 2)
 =end
