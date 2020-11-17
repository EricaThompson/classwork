Function.prototype.inherits = function(Parent) {
    // function Surrogate(){}
    // Surrogate.prototype = Parent.prototype;
    // this.prototype = new Surrogate;
    

    
    this.prototype = Object.create(Parent.prototype);
    this.prototype.constructor = this;




};

function MovingObject(name) {
    this.name = name;
}

MovingObject.prototype.sound = function() {
    console.log(`${this.name} goes swoosh`);
}

function Ship(name) {
    this.name = name;
}
function Asteroid(name) {
    this.name = name;
}


Ship.inherits(MovingObject);
Asteroid.inherits(MovingObject);

const pluto = new Ship("Pluto");
const moon = new Asteroid("Moon");
pluto.sound();
moon.sound();