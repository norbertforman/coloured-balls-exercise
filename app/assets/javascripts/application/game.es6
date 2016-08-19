class Game {
  constructor(canvas) {
    this.canvas = {};
    this.canvas.width = canvas.width / 2;
    this.ctx = canvas.getContext('2d');
    this.balls = [];
  }

  addBall() {
    this.clearBalls();
    this.drawBalls();

    this.newBall('purple');
  }

  newBall(color) {
    let ball = new Ball(this.canvas.width, 30, color, this.ctx);
    ball.drawBall();
    this.balls.unshift(ball);
  }

  drawBalls() {
    for (let index in this.balls) {
      let ball = this.balls[index];
      ball.moveDown();
      ball.drawBall();
    }
  }

  clearBalls() {
    for (let index in this.balls) {
      let ball = this.balls[index];
      ball.removeBall();
    }
  }
}
