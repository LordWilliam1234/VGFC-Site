class CharactersController < ApplicationController
  helper_method :sort_column, :sort_direction
  def basics
    @characters = Character.order(sort_column + ' ' + sort_direction)
  end
  
  def universal
    @characters = Character.order(sort_column + ' ' + sort_direction)
  end
  
  private
  def sort_column
    Character.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
 
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
