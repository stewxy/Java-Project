let canvas = document.getElementById("myCanvas");
let ctx = canvas.getContext("2d");
canvas.wwidth = window.innerWidth;
canvas.height = window.innerHeight;

let mouse = {
	x: null,
	y: null,
	radius: 100
}

let particleArray = [];

window.addEventListener("mousemove", function(event){
	mouse.x = event.x;
	mouse.y = event.y;
});

ctx.fillStyle = "white";
ctx.font = "30px Verdana";
ctx.fillText("A", 0, 30);

//ctx.strokeStyle = "white";
//ctx.strokeRect(0, 0, 100, 100);

let data = ctx.getImageData(0, 0, 100, 100);

class Particle{
	constructor(x, y){
	this.x = x;
	this.y = y
	this.size = 3;
	this.baseX = this.x;
	this.baseY = this.y;
	this.density = (Math.random() * 30) + 1;
	}
	draw(){
		ctx.fillStyle = "white";
		ctx.beginPath();
		ctx.ard(this.x, this.y, this.size, 0, Math.PI * 2);
		ctx.closePath();
		ctx.fill();
	}
}

function init(){
	particleArray= [];
	particleArray.push(new Particle(50, 50));
	particleArray.push(new Particle(80, 50));
}
init();
console.log(particleArray);

function animate(){
	
}


