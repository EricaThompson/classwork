/*
 * ATTENTION: The "eval" devtool has been used (maybe by default in mode: "development").
 * This devtool is not neither made for production nor for readable output files.
 * It uses "eval()" calls to create a separate source file in the browser devtools.
 * If you are trying to read the output file, select a different devtool (https://webpack.js.org/configuration/devtool/)
 * or disable the default devtool with "devtool: false".
 * If you are looking for production-ready output files, see mode: "production" (https://webpack.js.org/configuration/mode/).
 */
/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./src/asteroid.js":
/*!*************************!*\
  !*** ./src/asteroid.js ***!
  \*************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module, __webpack_require__ */
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Util = __webpack_require__(/*! ./util.js */ \"./src/util.js\");\nconst MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\n// const { inherits } = require('./util.js');\n\nconst DEFAULTS = {\n    COLOR: 'turquoise',\n    RADIUS: 30,\n};\n\nconst Asteroid = function(posObj){\n    posObj.color = DEFAULTS.COLOR;\n    posObj.radius = DEFAULTS.RADIUS;\n    posObj.vel = Util.randomVec(4);\n    MovingObject.call(this, posObj);\n}\n\nUtil.inherits(Asteroid, MovingObject)\n\nmodule.exports = Asteroid;\n\n\n// const mo = new MovingObject({\n//     pos: [30, 30],\n//     vel: [10, 10],\n//     radius: 5,\n//     color: \"#00FF00\"\n// });\n\n//# sourceURL=webpack:///./src/asteroid.js?");

/***/ }),

/***/ "./src/game.js":
/*!*********************!*\
  !*** ./src/game.js ***!
  \*********************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module, __webpack_require__ */
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Asteroid = __webpack_require__(/*! ./asteroid.js */ \"./src/asteroid.js\")\n\nconst Game = function(dimX, dimY, num_asteroids) {\n    this.DIM_X = dimX;\n    this.DIM_Y = dimY;\n    this.NUM_ASTEROIDS = num_asteroids\n    this.asteroids = [];\n    \n    while (this.asteroids.length < this.NUM_ASTEROIDS){\n        this.addAsteroids();\n    }\n\n\n};\n\nGame.prototype.addAsteroids = function(){\n    // randomizer \n    const position_x = Math.random() * this.DIM_X;\n    const position_y = Math.random() * this.DIM_Y;\n    this.asteroids.push(new Asteroid( { pos: [position_x, position_y] }));\n\n};\n\nGame.prototype.draw = function(ctx){\n    ctx.clearRect(this.DIM_X, this.DIM_Y, 500, 500);\n    this.asteroids.forEach(function(asteroid){\n        asteroid.draw(ctx);\n    })\n}\n\nGame.prototype.moveObjects = function(){\n    this.asteroids.forEach(function (asteroid) {\n        asteroid.move();\n    })\n}\n\nmodule.exports = Game; \n\n//# sourceURL=webpack:///./src/game.js?");

/***/ }),

/***/ "./src/game_view.js":
/*!**************************!*\
  !*** ./src/game_view.js ***!
  \**************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module, __webpack_require__ */
/*! CommonJS bailout: module.exports is used directly at 16:0-14 */
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

eval("const Game = __webpack_require__(/*! ./game */ \"./src/game.js\")\n\nconst GameView = function(ctx){\n    this.game = new Game(500,500,10);\n    this.ctx = ctx;\n}\n\nGameView.prototype.start = function(){\n    let that = this;\n    setInterval(function(){\n        that.game.moveObjects();\n        that.game.draw(that.ctx);\n    }, 20);\n}\n\nmodule.exports = GameView;\n\n//# sourceURL=webpack:///./src/game_view.js?");

/***/ }),

/***/ "./src/moving_object.js":
/*!******************************!*\
  !*** ./src/moving_object.js ***!
  \******************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/***/ ((module) => {

eval("const MovingObject = function(options){\n    this.pos = options.pos;\n    this.vel = options.vel;\n    this.radius = options.radius;\n    this.color = options.color;\n}\n\nMovingObject.prototype.draw = function(ctx) {\n    ctx.beginPath();\n    ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2*Math.PI);\n    ctx.strokeStyle = 'purple';\n    ctx.lineWidth = 2;\n    ctx.stroke();\n    ctx.fillStyle = this.color;\n    ctx.fill();\n}\n\nMovingObject.prototype.move = function() {\n    this.pos = [this.pos[0] + this.vel[0], this.pos[1] + this.vel[1]] \n}\n\nmodule.exports = MovingObject;\n\n\n//# sourceURL=webpack:///./src/moving_object.js?");

/***/ }),

/***/ "./src/util.js":
/*!*********************!*\
  !*** ./src/util.js ***!
  \*********************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/***/ ((module) => {

eval("const Util = {\n    inherits(childClass, parentClass) {\n        function Surrogate(){};\n        Surrogate.prototype = parentClass.prototype;\n        childClass.prototype = new Surrogate();\n        childClass.prototype.constructor = childClass;\n\n    },\n    // Return a randomly oriented vector with the given length.\n    randomVec(length) {\n        const deg = 2 * Math.PI * Math.random();\n        return Util.scale([Math.sin(deg), Math.cos(deg)], length);\n    },\n    // Scale the length of a vector by the given amount.\n    scale(vec, m) {\n        return [vec[0] * m, vec[1] * m];\n    }\n};\n\n\n\nmodule.exports = Util;\n\n//# sourceURL=webpack:///./src/util.js?");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!**********************!*\
  !*** ./src/index.js ***!
  \**********************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: __webpack_require__ */
eval("const MovingObject = __webpack_require__(/*! ./moving_object.js */ \"./src/moving_object.js\");\nconst Asteroid = __webpack_require__(/*! ./asteroid.js */ \"./src/asteroid.js\");\nconst Game = __webpack_require__(/*! ./game.js */ \"./src/game.js\");\nconst GameView = __webpack_require__(/*! ./game_view.js */ \"./src/game_view.js\");\n\ndocument.addEventListener(\"DOMContentLoaded\", function(){   \n    const canvas = document.getElementById(\"game-canvas\");\n    const ctx = canvas.getContext('2d');\n    // return ctx;\n\n    window.MovingObject = MovingObject;\n\n    const mo = new MovingObject({\n        pos: [30, 30],\n        vel: [10, 10],\n        radius: 5,\n        color: \"#00FF00\"\n    });\n\n    window.Asteroid = Asteroid;\n\n    window.Game = Game; \n\n    window.ctx = ctx;\n    \n    window.mo = mo;\n    \n    window.GameView = GameView;\n    \n})\n\n\n\n\n//# sourceURL=webpack:///./src/index.js?");
})();

/******/ })()
;