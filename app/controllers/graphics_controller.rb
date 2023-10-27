class GraphicsController < ApplicationController
  def index
    @graphics = Graphic.all
  end

  def new
    @graphic = Graphic.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
