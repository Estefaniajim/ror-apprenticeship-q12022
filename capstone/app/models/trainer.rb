class Trainer < ApplicationRecord
  has_many :pokemons

  def self.search(keyword)
  # self.where('name ILIKE ? OR email ILIKE ?', "%#{keyword}%","%#{keyword}%").order(:id)
  self.where('name ILIKE ?', "%#{keyword}%").order(:id)
  end

  def delete_pokemon
    self.pokemons.each do |pokemon|
      pokemon.destroy
    end
  end


end
