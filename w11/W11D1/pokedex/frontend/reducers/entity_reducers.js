import * as EntityActions from '../actions/entity_actions'

const pokemonsReducer = (oldState, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)

  switch (action.type) {
    case EntityActions.RECEIVE_POKEMONS:
      nextState[pokemon.id] = action.pokemon
      return nextState
    default:
      return oldState
  }
}

