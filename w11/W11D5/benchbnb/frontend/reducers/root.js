import { combineReducers } from 'redux';
import entitiesReducer from './entities';
import sessionReducer from './session';
import errorsReducer from './errrors'

export default combineReducers({
    entities: entitiesReducer,
    session: sessionReducer,
    errors: errorsReducer
})