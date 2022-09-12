// window varibles
const windowwidth = 640;
const windowheight = 480;
let key = {};
let isRunning = false;

// intializing canvas
let app = new PIXI.Application({ width: windowwidth, height: windowheight, x: 555 });
document.body.appendChild(app.view);

// intializing game objects
let pad1 = new PIXI.Sprite.from('imgs/pad1.png')
pad1.x = 44
pad1.y = 44

let pad2 = new PIXI.Sprite.from('imgs/pad1.png')
pad2.x = 580
pad2.y = 44

let pad1speed = 11;
let pad2speed = 11;

let border1 = new PIXI.Sprite.from('imgs/pad1.png')
border1.x = 641
border1.y = 44

let border2 = new PIXI.Sprite.from('imgs/pad1.png')
border2.x = 641
border2.y = 1
border2.width = 1

let border3 = new PIXI.Sprite.from('imgs/pad1.png')
border3.x = 1
border3.y = 481
border3.height = 1

let border4 = new PIXI.Sprite.from('imgs/pad1.png')
border4.x = 1
border4.y = 481
border4.width = 1

let ball = new PIXI.Sprite.from('imgs/ball.png')
ball.x = app.view.width / 2 - 8
ball.y = app.view.height / 2 - 8

let ballspeedX = 4;
let ballspeedY = 4;

let score1 = 0
let score2 = 0

let text1 = new PIXI.Text('Score: '+score1,
{fontFamily : 'Consolas',
fontSize: 25, fill : 0xff1010});

let text2 = new PIXI.Text('Score: '+score2,
{fontFamily : 'Consolas',
fontSize: 25, fill : 0x0000FF});

text1.x = 11
text1.y = 11

text2.x = 511
text2.y = 11

// drawing the objects
app.stage.addChild(pad1);
app.stage.addChild(pad2);
app.stage.addChild(ball);
app.stage.addChild(text1)
app.stage.addChild(text2)
app.ticker.add(gameloop);

// keyboard handler
document.addEventListener("keydown",keyDown);
document.addEventListener("keyup",keyUp);

// main loop
function gameloop() {
	ball.x += ballspeedX;
	ball.y += ballspeedY;

	if (key["w"] || key["W"]) {
		pad1.y -= pad1speed;
	}
	if (key["s"] || key["S"]) {
		pad1.y += pad1speed;
	}
	if (key["ArrowUp"]) {
		pad2.y -= pad2speed;
	}
	if (key["ArrowDown"]) {
		pad2.y += pad2speed;
	}

	if (collision(ball,pad2) || collision(ball,pad1)) {
		ballspeedX *= -1
	}
	if (ball.y + 16 >= app.view.height || ball.y <= 0) {
		ballspeedY *= -1
	}
	if (ball.x + 16 >= app.view.width) {
		ball.x = app.view.width / 2 - 8
		ball.y = app.view.height / 2 - 8
		score1++
		text1.text = "Score: "+score1
	}
	else if (ball.x <= 0) {
		ball.x = app.view.width / 2 - 8
		ball.y = app.view.height / 2 - 8
		score2++
		text2.text = "Score: "+score2
	}
}

// checking if a key is down
function keyDown(event){
	key[event.key] = true;
	console.log(key)
}

// checking if a key is up
function keyUp(event){
	key[event.key] = false;
}

function collision(a,b){
	let aBox = a.getBounds();
	let bBox = b.getBounds();

	return aBox.x + aBox.width > bBox.x &&
		   aBox.x < bBox.x + bBox.width &&
		   aBox.y + aBox.height > bBox.y &&
		   aBox.y < bBox.y + bBox.height;
}