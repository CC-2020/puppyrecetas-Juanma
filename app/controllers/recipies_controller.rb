class RecipiesController < ApplicationController
  def index
    @search_term= params[:buscar] || 'chocolate'
    @npage = params[:page] || '1'
    @recetas = Recipe.buscar(@search_term, @npage)
  end

end
