class DrinksController < ApplicationController
  def index
    render('index.html.erb')
  end

  def show
    @drink = Drink.crazy_formula(params[:drink])
    render('show.html.erb')
  end

  def new_drink
    if !@drink
      @drink = Drink.new
    end
    render('drinks/add.html.erb')
  end

  def create
    @drink = Drink.new(params[:drink])
    if !@drink.save
      new_drink
    else
      redirect_to('/')
    end
  end

end
