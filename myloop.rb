def myloop
  while true
    yield      # ブロックを実行する
  end
end

num = 1       # numの初期化
myloop do
  puts "num is #{num}"    # numの表示
  break if num > 10       # numが10を超えた時に抜ける
  num *= 2                # numを2倍にする
end
