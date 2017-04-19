class CatsController < ApplicationController

  def index
    @cats = Cat.all

    if @cats
      render :index
    else
      render text: "cats does not exist"
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    @cat = Cat.find(params[:id])

    if @cat.update_attributes(cat_params)
      render cat_url(@cat)
    else
      render edit_cat_url
    end

  end


  def create

    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to cat_url(@cat)
    else
      render :new
    end
  end


  private
  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end
end
