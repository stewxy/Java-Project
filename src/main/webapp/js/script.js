let canvas = document.getElementById("myCanvas");
let ctx = canvas.getContext("2d");
canvas.wwidth = window.innerWidth;
canvas.height = window.innerHeight;

let mouse = {
	x: null,
	y: null,
	radius: 100
}

window.addEventListener("mousemove", function(event){
	mouse.x = event.x;
	mouse.y = event.y;
})

ctx.fillStyle = "white";
ctx.font = "30px Verdana";
ctx.fillText("A", 0, 30);

//ctx.strokeStyle = "white";
//ctx.strokeRect(0, 0, 100, 100);

let data = ctx.getImageData(0, 0, 100, 100);