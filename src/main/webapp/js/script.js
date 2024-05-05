let canvas = document.getElementById("myCanvas");
let ctx = canvas.getContext("2d");

let mouse = {
	x: null,
	y: null,
	radius: 100
}

window.addEventListener("mousemove", function(event){
	mouse.x = event.x
	mouse.y = event.y
})