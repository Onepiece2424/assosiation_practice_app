class DogsController < ApplicationController
  def index
    @dogs = Dog.eager_load(:owner)
  end

  def new
  end
end
