class PokemonsController < ApplicationController
  include PokemonsHelper

  def index
    @pokemons, @s_t, @s_e = search_type_egg(params[:search_type],params[:search_egg])
    @pokemons = @pokemons.page(params[:page]).per(4)
    @type_hash = create_type_hash()
    @egg_hash = create_egg_hash()
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    @type_hash = create_type_hash()
    @egg_hash = create_egg_hash()
    @img_hash = create_img_hash()
  end
end
