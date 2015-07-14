//Eron Lake 
//CMPM 20
//
//-------------------------------------------------------
//BEGINING OF SCRIPT///////////////////////////////////////
//-------------------------------------------------------

//initialization
//----------------------------------------------------
var canvas = document.getElementById("canvas");
var context = canvas.getContext("2d");


//console.log('this works');

//variable definitions
//---------------------------------
//LightSeaGreen, LightSalmon, MediumSeaGreen

//global variables
//static variables
var pwidth = 50;
var pheight = 200;

var lwidth = 100;
var lheight = 100;

loadSpeed = 10;
//movable variables
var menuBox = 100; // defines how far out the menu comes

var loadx = canvas.width-100;
var loady = canvas.height*3/5 - 100;

var itemp = {x: 100, y: 100};

var moveIndex;
var movePillar;

var test = false;
var testGo = false;
var pass =false;
//---------------------------
//mouse variables
var mouse = {x: 1000, y: 1000};
var mdown = false;
var carry = false;
var picItem;

//---------------------------
var money = 0;

/////////////////////////////////////////////
//GAME STATES
var state = 1;
//----------------
//possible states
var play = 1;
var menu = 2;
var put = 3;
var success = 4;
var failure = 5;
var pause = 6;
// var test = 7;***********************************
/////////////////////////////////////////////

/////////////////////////////////////////
//bridge types
/////////////////////////////////////////
//-----------------------------------------------------------
var rockB = Bridge('rock',1000,'red',500);
//-----------------------------------------------------------
//pushes the item onto the menu list of bridges
var menuBridges = [get(rockB)]; 

/////////////////////////////////////////
//Pillar types
/////////////////////////////////////////

//-----------------------------------------------------------
var emptyp = Pillar('empty',100,'AliceBlue',50);

var marshmellowP = Pillar('marshM',20,'gray',5);
var rubberP = Pillar('rubberP',60,'pink',15);
var woodP = Pillar('woodP',120,'brown',30);
var rockP = Pillar('rock',200,'red',50);
var steelP = Pillar('steel',300,'blue',75);
//-----------------------------------------------------------
//pushes the item onto the menu list of pillars
var menuPillars = [get(rockP)]; 
menuPillars.push(get(rockP)); 
menuPillars.push(get(marshmellowP)); 
menuPillars.push(get(rubberP)); 
menuPillars.push(get(woodP)); 
menuPillars.push(get(steelP)); 


console.log(menuPillars[0].name.length);


/////////////////////////////////////////
//LiveLoad types
/////////////////////////////////////////
//-----------------------------------------------------------
var rat = LiveLoad('rat',1,15,'gray',30);
var rabbit = LiveLoad('rabbit',2,25,'pink',50);
var cat = LiveLoad('cat',3,40,'orange',80);
var dog = LiveLoad('yellow',4,60,'brown',120);
var horse = LiveLoad('horse',5,80,'black',200);
var cow = LiveLoad('cow',6,100,'green',240);
var car = LiveLoad('cat',7.1200,'purple',400);




//-----------------------------------------------------------
//pushes the item onto the list of bridges

//active elements
//-------------------------------------------------------------------
var activeBridge = get(rockB); //what bridge is curretly in use
var activePillars= [get(marshmellowP)];   //what bridge is curretly in use 

//activePillars.push(get(marshmellowP));
//var iter = 0

//fills the active pillars with empty pillars
for(var iter = 0; iter < 6; iter++){
	activePillars.push(get(emptyp));
}
activePillars.splice(5, 1, get(marshmellowP));



var activeWeights = [get(rat)]; //what liveweight is curretly in use
activeWeights.push(get(rabbit));
activeWeights.push(get(cat));
activeWeights.push(get(dog));
activeWeights.push(get(horse));
activeWeights.push(get(cow));
activeWeights.push(get(car));
var weightIndex = 0;
//-------------------------------------------------------------------


//-------------------------------------------------------------------


//**************************MAIN CODE BEGINS********************************
////////////////////////////////////////////////////////////////////////////

function draw(){
	if(state == play){
		if(testGo){
			background();
			drawObjects();
			testLoad();
			drawMenu(); 
			moneyDisplay();

			console.log('loadx' +loadx);
		}else {
			background();
			drawObjects();
			slideMenu();
			drawMenu(); 
			moneyDisplay();

		}
	//	console.log(mouse.x);
	//	console.log('___'+ menuBox);
	//	console.log('_________'+ state);
		//console.log(mdown);
	//	console.log('___ace______'+ activePillars);

	}else  if(state == menu){
		background();
		drawObjects();
		slideMenu();
		drawMenu(); 
		drawItem();
		pickup();
		moneyDisplay();
		//console.log(mouse.x);
		//console.log('___'+ menuBox);
	//	console.log('_________'+ state);
	}else if(state == put){
		background();
		drawObjects();
		slideMenu();
		drawMenu(); 
		pickup();
		placement();
		moneyDisplay();

		//console.log(mouse.x);
		//console.log('___'+ menuBox);
		//console.log('_________'+ state);
	}if(state == pause){
		background();
		drawObjects();
		pauseScreen();
		drawMenu();
		moneyDisplay();

	}if(state == success){
		//moneyDisplay();
		successFunc();

	}if(state == failure){
		failureFunc();
		//moneyDisplay();
	}

}

function moneyDisplay(){
	context.font = "48px serif";
    context.fillStyle = 'red';
    context.fillText(money, canvas.width-100, 100);

}

function update() {
	if(state == play){
		//moveLoad();
		drawMenu();
	}else if(state == menu){
	//	moveLoad();
		drawMenu();
	}else if(state == pause){
	}
}

////////////////////////////////
function background(){
	canvas.width = canvas.width;
	context.fillStyle = 'AliceBlue';
	context.fillRect(0,0, canvas.width,canvas.height);  
	context.fill();
}

function drawObjects(){
	drawBridge(activeBridge);
	drawPillars(activePillars);
	//drawLoad(activeBridge);
}

function pauseScreen(){
	context.fillStyle = 'rgba(0, 0, 0, 0.2)';
	context.fillRect(0,0, canvas.width,canvas.height);  
	context.font = "48px serif";
    context.fillStyle = 'red';
    context.fillText("PAUSE", canvas.width/2, canvas.height/2);
	context.fill();
}

function drawMenu(){
	context.fillStyle = 'MediumSeaGreen';
	if(state == play){
		menuBox = 100;
	}if(state == menu){
		menuBox = 800;
	}if(state == put){
		menuBox = 100;
	}
	
	context.fillRect(0,0, menuBox,canvas.height); 
}

function slideMenu(){
	if (mouse.x < menuBox){
		state = menu;
	}else if(mdown == true && state == menu && mouse.x > menuBox){
		state = put;
	}else if(state == menu && mouse.x > menuBox){
		state = play;
	}
}

function drawItem(){
	var itemx = itemp.x;
	var itemy = itemp.y;

	context.font = "24px serif";
    for(var i = 0; i < menuPillars.length; i++){
    	 context.fillStyle = 'red';
	    context.fillText(menuPillars[i].name, itemx - menuPillars[i].name.length*5/2, itemy -10);
	     context.fillStyle = menuPillars[i].picture;
	    context.fillRect(itemx,itemy, pwidth/2,pheight/2);  
	     context.fillStyle = 'red';
	    context.fillText(menuPillars[i].price, itemx + menuPillars[i].name.length/2, itemy + pheight -80);

	    itemx += 100;
	}
}

function pickup(){
	if(mdown == true){
	var itemx = itemp.x;
	var itemy = itemp.y;
	
    for(var i = 0; i < menuPillars.length; i++){
	if((itemx + 10 < mouse.x  && mouse.x < itemx + pwidth/2 + 10) && (itemy + 10< mouse.y && mouse.y < itemy + pheight/2 + 10)){
		console.log('pickup');
		if(carry == false){ picItem = menuPillars[i]; }	
		carry = true;
		break;
	}
	itemx += 100;
	}
	  context.fillStyle = picItem.picture;

	  if(carry == true) {
	  	context.fillRect(mouse.x - pwidth/2, mouse.y - pheight/2, pwidth,pheight);  
	  	context.fillText(picItem.name,mouse.x - pwidth/2- picItem.name.length*5/2, mouse.y - pheight/2 -10);
	  }	
	}
}

function placement(){
	var xval= 100;
	//var yval 100;
	for(var i =0; i < 6; i++){
		context.fillStyle = 'rgba(0, 0, 255, 0.05)';
		context.fillRect(xval,canvas.height*3/5 + 60, pwidth,pheight);  
 		context.fill();
 		xval += 150;
	}
}
////////////////////////////////

//------------------------------------------

//function that draws the pillars
//------------------------------------------
function drawPillars(typeArray) {
	//draws bridge
	var xval= 100;
	//var yval 100;
	for(var i =0; i < typeArray.length; i++){
		if(activePillars[i]) {context.fillStyle = activePillars[i].picture;}
		context.fillRect(xval,canvas.height*3/5 + 60, pwidth,pheight);  
 		context.fill();
 		xval += 150;
	}
	
    
}
//------------------------------------------

//function that draws the bridge
//------------------------------------------
function drawBridge(type) {
	//draws bridge
	context.fillStyle = type.picture;
    context.fillRect(0,canvas.height*3/5, 1200,60);  
 	context.fill();
}
//------------------------------------------

//functions dealing with the movement and drawing of the load
///////////////////////////////////////////////
//draws load
//------------------------------------------
function drawLoad(type){
	context.fillStyle = activeWeights[weightIndex].picture;
    context.fillRect(loadx,loady, lwidth,lheight);  
 	context.fill();
}
//------------------------------------------
function moveLoad(){
	loadx -= loadSpeed;

}
//------------------------------------------

function testLoad(){
	if(test == false){
		loadx = canvas.width-100;
		loady = canvas.height*3/5 - 100;
	}

	drawLoad(activeBridge);
	moveLoad();

	test = true
	var pilA;
	var locA;
	var pilB;
	var locB;

	var support;
	var distance;
	var totalS;
	var xval = 100;

	
	//	if(pass = true) {}

	if(test){
		for(var i =0; i < 6; i++){
			if(activePillars[i] != emptyp) {
				if(pilA) {
					pilB = pilA;
					locB = locA;
				}
				pilA = activePillars[i].load;
				locA = xval;		
			}

			if(locB <loadx && loadx < locA - ((locA-locB)/2)){

				support = activeBridge.load + pilA + pilB;
				distance = (locA - locB)/15;

				totalS = support/distance;

				console.log('s ' + support);
				console.log('d ' + distance);
				console.log('t ' + totalS);

				if(totalS < activeWeights[weightIndex].weight){
					state = failure;
				}else { pass = true; }
			}

		xval += 150;
		}
		console.log('pass ' + pass);
		if(pass && loadx < 0) {state = success;}	
	}
}

function successFunc(){
	loadx = canvas.width-100;
	if(testGo) { money += activeWeights[weightIndex].reward; }
	if(testGo && weightIndex < activeWeights.length -1){ weightIndex += 1; }
	testGo = false;
	context.font = "120px serif";
	context.fillStyle = 'red';
	context.fillText('SUCCESS!',canvas.width/2 - 200, canvas.height/2);
	context.fill();
} 

function failureFunc(){
	loadx = canvas.width-100;
	//if(testGo && weightIndex < activeWeights.length -1){ weightIndex += 1; }
	testGo = false;
	context.font = "120px serif";
	context.fillStyle = 'red';
	context.fillText('fail!',canvas.width/2 - 200, canvas.height/2);
	context.fill();
} 

//////////////////////////////////////////////////////////////////
addEventListener("keydown", function(key){ 
    if(key.keyCode == 32 && state == play){
        testGo = true;
    }
});

addEventListener("keydown", function(key){ 
    if(key.keyCode == 27 && state == play){
        state = pause;
    }else  if(key.keyCode == 27 && state == pause){
        state = play ;
    }
});

document.addEventListener('mousemove', function(e){ 
    mouse.x = e.clientX || e.pageX; 
    mouse.y = e.clientY || e.pageY 
}, false);


document.addEventListener("mousedown", function(){ 
  mdown = true;
  if(state == play){
  	var xval= 100;

	for(var i =0; i < 6; i++){
		if((xval + 10 < mouse.x  && mouse.x < xval + pwidth/2 + 10) && 
			(canvas.height*3/5 + 60 < mouse.y && mouse.y < canvas.height*3/5 + 60 + pheight/2 + 10)){
 			//console.log('add to the active list');
 			if(activePillars[i] != emptyp){
 				moveIndex = i;
 				movePillar = activePillars[i];
	 			picItem = activePillars[i];
	 			activePillars.splice(i, 1, emptyp);
	 			carry = true;
	 			state = put;
	 		}
 			//activePillars.splice(i, 1, picItem);
 			//activePillars[i] = picItem;
 		//	context.fill();
		}	
		xval += 150;
	}
  }
});

document.addEventListener("mouseup", function(){ 
  mdown = false;
  carry = false;
  if(state == success || state == failure) {
  	state = play;
  }

	if(state == play){
	
	}if(state == menu){
		
	}if(state == put){

		var xval= 100;
		var worked = false;
		for(var i =0; i < 6; i++){
			if((xval + 10 < mouse.x  && mouse.x < xval + pwidth/2 + 10) && 
				(canvas.height*3/5 + 60 < mouse.y && mouse.y < canvas.height*3/5 + 60 + pheight/2 + 10)){
	 			console.log('add to the active list');
	 			activePillars.splice(i, 1, picItem);
	 			worked = true;
	 			//activePillars[i] = picItem;
	 		//	context.fill();
			}	
			xval += 150;
		}  
		if(worked == false){
		//this makes the pillar return to its original place
		//if it is not placed in the correct location
		console.log('this operation worked')
		if (movePillar) {activePillars.splice(moveIndex, 1, movePillar); }
		}

		state = play;
		picItem = emptyp;


	}
});


//////////////////////////////////////////////////////////////////



   
//**********************************************************************

//bridge class
/////////////////////////***********
function Bridge(name,load,picture,price) {
    var temp = {
    name:name,
    load:load,
    picture:picture,
    price:price,
	}
     return temp; 
}
/////////////////////////***********

//**********************************************************************

//Pillar class
/////////////////////////***********
function Pillar(name,load,picture,price) {
	var temp = {
    name:name,
    load:load,
    picture:picture,
    price:price,
	}
     return temp; 
}
/////////////////////////***********

//**********************************************************************

//LiveLoad class
/////////////////////////***********
function LiveLoad(name,number,weight,picture,reward) {
	var temp = {
    name:name,
    number:number,
    weight:weight,
    picture:picture,
    reward:reward,
	}
     return temp; 
}
/////////////////////////***********

//returns the variables of the class input
function get(type) {
 	return type;
}

//**********************************************************************

//FINAL GAME LOOP/////////////////////////////////////////
//---------------------------------------------------------
function game_loop(){
    update();
    draw();
}

setInterval(game_loop, 30);
//---------------------------------------------------------
///////////////////////////////////////////////////////////