class Api::FruitsController < ApplicationController
  def index
    @fruits = Fruit.all
    render 'index.json.jb'
  end

  def show
    @fruit = Fruit.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @fruit = Fruit.new(name: params[:name], category: params[:category], color: params[:color])
    @fruit.save!
    render 'show.json.jb'
  end

  def update
    @fruit = Fruit.find_by(id: params[:id])
    @fruit.name = params[:name]
    @fruit.category = params[:category]
    @fruit.color = params[:color]
    @fruit.save
    render 'show.json.jb'
  end
end
