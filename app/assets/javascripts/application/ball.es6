class Ball {
  constructor(x, y, color, ctx) {
    this.index = 1;
    this.x = x;
    this.y = y;
    this.color = color;
    this.ctx = ctx;
  }

  drawBall() {
    this.ctx.beginPath();
    let y = this.index * this.y;
    this.ctx.ellipse(this.x, y, 20, 10, 0, 0, 2 * Math.PI);
    this.ctx.strokeStyle = this.color;
    this.ctx.fillStyle = this.color;
    this.ctx.fill();
    this.ctx.stroke();
  }

  removeBall() {
    this.ctx.beginPath();
    let y = this.index * this.y;
    this.ctx.ellipse(this.x, y, 22, 12, 0, 0, 2 * Math.PI);
    this.ctx.strokeStyle = 'white';
    this.ctx.fillStyle = 'white';
    this.ctx.fill();
    this.ctx.stroke();
  }

  moveDown() {
    this.index += 1;
  }
}
