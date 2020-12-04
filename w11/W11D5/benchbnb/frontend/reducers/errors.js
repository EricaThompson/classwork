import {
    
} from '../actions/errors';

const _nullError = {
    session: null,
}

export default (state = _nullError, action) => {
    Object.freeze(state);
    switch (action.type) {
        case ERROR_CASE_1:
            return Object.assign({}, { session: ['Invalid credentials']});
        case ERROR_CASE_2:
            return _nullError;
        default:
            return state;
    }
}