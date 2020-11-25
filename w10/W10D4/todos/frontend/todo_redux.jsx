import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';


document.addEventListener("DOMContentLoaded", () => {
    const preloadedState = {
        1: {
            id: 1,
            title: 'wash car',
            body: 'with soap',
            done: false
        },
        2: {
            id: 2,
            title: 'wash dog',
            body: 'with shampoo',
            done: true
        },
    }

    const store = configureStore(preloadedState);

    const root = document.getElementById('root');
    ReactDOM.render(<Root store={store}>Todos App</Root>, root);
});