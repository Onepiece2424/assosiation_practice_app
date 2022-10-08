# class << Receipt
#   class << self
#     def create_receipt_xyz
#       self.new("ストアXYZ")
#     end
#   end
# end

str1 = "Ruby"
str2 = "Ruby"

class << str1
  def hello
    "Hello, #{self}!"
  end
end

p str1.hello
p str2.hello
