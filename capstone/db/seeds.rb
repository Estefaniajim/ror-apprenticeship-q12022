# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Trainer.create(name: "Estefania",email: "estefania@gmail.com", password: "test1", level: 1)

Pokemon.delete_all

pokemon1 = Pokemon.create(
  name: "Pikachu",
  img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/25.svg",
  level: 1,
  trainerID: 1)

pokemons_data = []
response = HTTParty.get("https://pokeapi.co/api/v2/pokemon?limit=6&offset=1")
response = JSON.parse(response.body)
response.each do |k, value|
  if k == "results"
    value.each do |key, val|
      response = HTTParty.get(key["url"])
      response = JSON.parse(response.body)
      pokemons_data.push(response)
    end
  end
end

pokemons_data.map do |poke|
  poke_name = poke['forms'][0]['name']
  img_link = poke['sprites']['other']['dream_world']["front_default"]
  Pokemon.create(
    name: poke_name.to_s,
    img: img_link.to_s,
    level: 1,
    trainerID: 1)
  end
