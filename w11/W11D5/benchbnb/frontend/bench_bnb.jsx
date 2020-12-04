// frontend/bench_bnb.jsx

import React from "react";
import ReactDOM from "react-dom";

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