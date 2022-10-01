class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
