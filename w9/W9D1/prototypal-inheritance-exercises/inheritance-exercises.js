Function.prototype.inherits = function(Parent) {
    //surrogate
    // function Surrogate(){}
    // Surrogate.prototype = Parent.prototype;
    // this.prototype = new Surrogate();
    
    //with object.create
    this.prototype = Object.create(Parent.prototype);
    
    //for both
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

//non prototype version
// function inherits(ChildClass, ParentClass){
//     function Surrogate(){}
//     Surrogate.prototype = ParentClass.prototype;
//     ChildClass.prototype = new Surrogate();
// }

//a function is return from the bind function 
//bind returns bind function to call in the second function, call time 