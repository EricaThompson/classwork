json.pokemon do 
  json.set! @pokemon.id, @pokemon
end

json.poke_moves do
  @pokemon.poke_moves.each do |pokemove|
    json.set! pokemove.id, pokemove
  end
end

json.moves do
  @pokemon.moves.each do |move|
    json.set! move.id, move
  end
end

json.items do
  @pokemon.items.each do |item|
    json.set! item.id, item
  end
end