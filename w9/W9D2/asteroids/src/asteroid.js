const Util = require('./util.js');
const MovingObject = require('./moving_object.js');
// const { inherits } = require('./util.js');

const DEFAULTS = {
    COLOR: 'turquoise',
    RADIUS: 30,
};

const Asteroid = function(posObj){
    posObj.color = DEFAULTS.COLOR;
    posObj.radius = DEFAULTS.RADIUS;
    posObj.vel = Util.randomVec(4);
    MovingObject.call(this, posObj);
}

Util.inherits(Asteroid, MovingObject)

module.exports = Asteroid;


// const mo = new MovingObject({
//     pos: [30, 30],
//     vel: [10, 10],
//     radius: 5,
//     color: "#00FF00"
// });