const Asteroid = require('./asteroid.js')

const Game = function(dimX, dimY, num_asteroids) {
    this.DIM_X = dimX;
    this.DIM_Y = dimY;
    this.NUM_ASTEROIDS = num_asteroids
    this.asteroids = [];
    
    while (this.asteroids.length < this.NUM_ASTEROIDS){
        this.addAsteroids();
    }


};

Game.prototype.addAsteroids = function(){
    // randomizer 
    const position_x = Math.random() * this.DIM_X;
    const position_y = Math.random() * this.DIM_Y;
    this.asteroids.push(new Asteroid( { pos: [position_x, position_y] }));

};

Game.prototype.draw = function(ctx){
    ctx.clearRect(this.DIM_X, this.DIM_Y, 500, 500);
    this.asteroids.forEach(function(asteroid){
        asteroid.draw(ctx);
    })
};

Game.prototype.moveObjects = function(){
    this.asteroids.forEach(function (asteroid) {
        asteroid.move();
    })
};

Game.prototype.wrap = function(pos) {

}

module.exports = Game; 