export const RECEIVE_POKEMONS = 'RECEIVE_POKEMONS';

export const recievePokemons = (pokemons) => {
  return {
    type: RECEIVE_POKEMONS,
    pokemons
  }
}