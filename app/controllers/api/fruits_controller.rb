class Api::FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render 'index.json.jb'
  end

  def show
    @fruit = Fruit.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
