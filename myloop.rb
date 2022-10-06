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
#def foo(*args)
#  args
#end

#p foo(1, 2, 3)

# 設定した引数の数でない時にメソッドを実行した時
#def meth (arg, *args)
#  [arg, args]
#end

#p meth(1)
#p meth(1, 2, 3).flatten
#p meth([], 1)
#p meth(0, 1)

#def a(a, *b, c)
#  [a, b, c]
#end

#p a(1, 2, 3, 4, 5)
#p a(1, 2)


# キーワード引数
# def area(x: 0, y: 0, z: 0)
#   xy = x * y
#   yz = y * z
#   zx = z * x
#   (xy + yz + zx) * 2
# end

# p area(x: 2, y: 3, z: 4)
# p area(z: 4, y: 3, x: 2)
# p area(x: 2, z: 3)


# # ハッシュに対してmapメソッドを実行
# h = { "apple" => 100, "orange" => 200, "grape" => 300}    # ハッシュを定義
# p h.map { |key, value| |key, value * 2|}       # => [["apple", 200], ["orange", 400], ["grape", 600]] 配列で返ってくる
# p h.map { |key, value| |key, value * 2|} .to_h   # => {"apple"=>200, "orange"=>400, "grape"=>600} to_hメソッドを追加することでハッシュ形式で返ってくる

# #mapの＆とメソッドを省略した記法
# a = ["apple", "orange", "grape"]
# p a.map(&:upcase)

# 配列を引数に展開する
# def foo(a,b,c)
#   a + b + c
# end

# p foo(1,2,3)

# args1 = [2, 3]
# p foo(1, *args1)

# args2 = [1,2,3]
# p foo(*args2)

# 引数にハッシュを渡す
# def foo(arg)
#   arg
# end

# p foo({"a" => 1, "b" => 2})   # {"a"=>1, "b"=>2}
# p foo("a" => 1, "b" => 2)   # {"a"=>1, "b"=>2}
# p foo(a: 1, b: 2)   # {:a=>1, :b=>2}

# def bar(arg1, arg2)
#   [arg1, arg2]
# end

# p bar(100, {"a" => 1, "b" => 2})  # [100, {"a"=>1, "b"=>2}]
# p bar(100, "a" => 1, "b" => 2) # [100, {"a"=>1, "b"=>2}]
# p bar(100, a: 1, b: 2)  # [100, {:a=>1, :b=>2}]

# インスタンスの作成
arr = Array.new
str = 'Hello!'
p arr
p arr.instance_of?(Array)  #=> true
p str.instance_of?(Array)  #=> false

str1 = "This is a pen."
p str1.is_a?(String)
p str1.is_a?(Object)
