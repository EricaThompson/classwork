// frontend/bench_bnb.jsx

import React from "react";
import ReactDOM from "react-dom";
// import { login } from "./util/session_api_util";
import {signup, login, logout} from './util/session_api_util';

document.addEventListener("DOMContentLoaded", () => {
    const root = document.getElementById("root");
    if (window.currentUser) {
        preloadedState = {
            session: {
                currentUser: window.currentUser
            }
        };
    }

    ReactDOM.render(<h1>Welcome to BenchBnB</h1>, root);
});

window.signup = signup;
window.login = login;
window.logout = logout;