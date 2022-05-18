class AddTrainerIdToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :trainerID, :integer
  end
end
