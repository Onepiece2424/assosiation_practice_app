class AccessTest
  def pub
    puts "pub is a public method."
  end

  public :pub # pubメソッドをpublicに指定（指定しなくてもよい）
  def priv
    puts "pub is a private method."
  end

  private :priv # privメソッドをprivateに設定
end

access = AccessTest.new
access.pub
access.priv
