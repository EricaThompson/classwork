const Game = require("./game")

const GameView = function(ctx){
    this.game = new Game(500,500,10);
    this.ctx = ctx;
}

GameView.prototype.start = function(){
    let that = this;
    setInterval(function(){
        that.game.moveObjects();
        that.game.draw(that.ctx);
    }, 20);
}

module.exports = GameView;