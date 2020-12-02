import * as EntityActions from '../actions/entity_actions'

const pokemonsReducer = (oldState, actions) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)

  switch (actions.type) {
    case EntityActions.RECEIVE_POKEMONS:
      nextState[]
    default:
      return oldState
  }
}

