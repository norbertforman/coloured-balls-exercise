class Game {
  constructor(canvas) {
    this.canvas = {};
    this.canvas.width = canvas.width / 2;
    this.ctx = canvas.getContext('2d');
    this.balls = [];
    this.sum = 0;
    this.score = 0;
  }

  addBall() {
    this.clearBalls();
    this.drawBalls();
    ajax('POST', `/api/v1/balls?number=${this.sum}`).then((data) => {
      this.newBall(data.color, data.score);
      this.setData();
    }, (data) => {
      console.warn(data);
    });
  }

  setData() {
    document.getElementById('sum-value').innerHTML = this.sum;
    document.getElementById('score-value').innerHTML = this.score;
  }

  newBall(color, score) {
    let ball = new Ball(this.canvas.width, 30, color, score, this.ctx);
    ball.drawBall();
    this.balls.unshift(ball);
    this.sum += 1;
    this.score += ball.score;
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
