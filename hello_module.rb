module HelloModule
  VERSION = "1.0"

  def hello(name)
    puts "Hello, #{name}."
  end
  module_function :hello  # helloをモジュール関数として公開する
end

p HelloModule::VERSION
HelloModule.hello("Alice")

include HelloModule
p VERSION
hello("Alice")
