class IngredientsController < ApplicationController
  def index
    @ingredient = Ingredient.all
  end

  def show
  end
end
