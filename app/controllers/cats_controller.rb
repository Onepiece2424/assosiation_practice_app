class CatsController < ApplicationController
  def index
    @cats = Cat.all
    @owners = Owner.all
    @owner_cat_joins = Owner.joins(:cats)
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
