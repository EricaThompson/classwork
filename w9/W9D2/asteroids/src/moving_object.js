const MovingObject = function(options){
    this.pos = options.pos;
    this.vel = options.vel;
    this.radius = options.radius;
    this.color = options.color;
}

MovingObject.prototype.draw = function(ctx) {
    ctx.beginPath();
    ctx.arc(50, 50, 75, 0, 2*Math.PI);
    ctx.strokeStyle = "salmon";
    ctx.lineWidth = 2;
    ctx.stroke();
    ctx.fillStyle = "lightblue";
    ctx.fill();
}

MovingObject.prototype.move = function() {
    this.pos = [this.pos[0] + this.vel[0], this.pos[1] + this.vel[1]] 
}

module.exports = MovingObject;
