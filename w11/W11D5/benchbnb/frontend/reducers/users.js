import {USER_ACTIONS} from '../actions/users';

export default (state ={}, action) => {
    Object.freeze(state);
    let nextState = Object.assign({}, state)

    switch (action.type) {
        case USER_ACTIONS:
            return nextState;
        default:
            return state;
    }
}