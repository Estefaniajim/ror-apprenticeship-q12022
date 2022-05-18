class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def show
    @pokemon = Pokemon.find(params[:name])
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.create(pokemon_params)
    redirect_to_pokemon_path(@pokemon)
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    @pokemon = Pokemon.update(pokemon_params)
    redirect_to_pokemon_path(@pokemon)
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    redirect_to_pokemon_path
  end

end
