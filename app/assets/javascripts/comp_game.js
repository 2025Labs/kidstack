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

//variable definitions
//---------------------------------
//LightSeaGreen, LightSalmon, MediumSeaGreen


//images 
var nanomesh_bridge_item_img = document.getElementById('nanomesh_bridge_item_img');
var gold_bridge_item_img = document.getElementById('gold_bridge_item_img')
var steel_bridge_item_img = document.getElementById('steel_bridge_item_img')
var platinum_bridge_item_img = document.getElementById('platinum_bridge_item_img')



//global variables////////////////////////

//mouse variables

//mouse unit:needed for picking up objects with proportional screen size

var mouse = {x: 1000, y: 1000*(1/resolution)};

var hovering = false
var hovering_object = null;
var selected_object = null;

mdown = true;
pressed = false;

var chosen_chassi = null;
//-------------------------------------------------
//CHASSI_SELECT VARIABLES
//-------------------------------------------------
	//chassis
	var desktop = chassi('desktop',nanomesh_bridge_item_img);
	var laptop = chassi('laptop',gold_bridge_item_img);
	var tablet = chassi('tablet',steel_bridge_item_img);
	var smart_phone = chassi('smart_phone',platinum_bridge_item_img);

	chassi_list = [desktop,laptop,tablet,smart_phone];
	active_objects = chassi_list;

//-------------------------------------------------
//SLIDE_VARIABLS VARIABLES
//-------------------------------------------------
	fakeMenu
	//variables necessary for the menu to slide out
	var silding = false;
	var slideSpeed = 145;
	var menuBox = 100; // defines how far out the menu comes
	var fakeMenu = 0;
	var slide_direction = 'right';
//-------------------------------------------------

//-------------------------------------------------
//BUILD_VARIABLS VARIABLES
//-------------------------------------------------
	var circuit_board_lv1 = comChannel('circuit_board_level_1',nanomesh_bridge_item_img);
	var active_channel = circuit_board_lv1;
//-------------------------------------------------

/////////////////////////////////////////////
//GAME STATES
var past_state = 1;
var state = 1;
//----------------
//possible states
var chassi_select = 1;
var build = 2;
var slide = 3;
var menu = 4;
var put = 5;
var arrange = 6;
var sell = 7;
var results = 8;
/////////////////////////////////////////////

//static variables

//-------------------------------------------------
//CORE FUNCTION////////////////////////////////////
//-------------------------------------------------
function update(){
	updateScreenSize();
	updateActiveObjects();
	updateHovering();
	update_press();
	//console.log('pressed: ' + pressed);
	//console.log('mouse.x: ' + mouse.x);
	//console.log('mouse.y: ' + mouse.y);
	//console.log('resolution: ' + resolution);
	//console.log('hovering: ' + hovering);
	//console.log('hoveringObject: ' + hovering_object);
	//console.log('chosen_chassi: ' + chosen_chassi);
	//console.log('state: ' + state);
	console.log('fakeMenu: ' + fakeMenu);
	if(state == chassi_select){
		chooseChassi();

	//	console.log('left: ' + active_objects[0].getLeft());
	//	console.log('right: ' + active_objects[0].getRight());
	//	console.log('top: ' + active_objects[0].getTop());
	//	console.log('bottom: ' + active_objects[0].getBottom());

	
	//console.log('chassi_list2: ' + chassi_list2[1].picture);
	//console.log('desktop: ' + desktop.width);

	}
	if(state == slide){
	}

}
//------------------------------------------------------
//global update functions
function updateActiveObjects(){
	if(state == chassi_select){
		active_objects = chassi_list;
	}
}

function updateHovering(){
	for(i = 0; i < active_objects.length; i++){
		if((active_objects[i].getLeft() < mouse.x && mouse.x < active_objects[i].getRight()) &&
			(active_objects[i].getTop() < mouse.y && mouse.y < active_objects[i].getBottom())){
			hovering = true;
			hovering_object = active_objects[i];
			//getHoveringObject(active_objects[i]);
			return;
		}
	}
	hovering =false;
	hovering_object = null;
}

function update_press(){
	if(hovering != true || mdown != true){
		pressed = false;
	}
}
/*
function getHoveringObject(object){
	if(hovering = true){
		hovering_object = object;
}
*/
//------------------------------------------------------
//slide functions

//------------------------------------------------------

//------------------------------------------------------
//chassi_select functions

function chooseChassi(){
	if(pressed == true){
		chosen_chassi = chosen_chassi;
		past_state = chassi_select;
		state = slide;
	}
}
//------------------------------------------------------

//------------------------------------------------------
//build_functions

function OverChannel(){
	for(i = 0; i < active_objects.length; i++){
		if((active_objects[i].getLeft() < mouse.x && mouse.x < active_objects[i].getRight()) &&
			(active_objects[i].getTop() < mouse.y && mouse.y < active_objects[i].getBottom())){
			hovering = true;
			hovering_object = active_objects[i];
			//getHoveringObject(active_objects[i]);
			return;
		}
	}
	hovering =false;
	hovering_object = null;
}
//------------------------------------------------------

///////////////////////////////////////////////////////////
//*********************************************************
///////////////////////////////////////////////////////////





function draw(){
	if(state == chassi_select){
		background();
		drawChassis();
	}
	if(state == build){
		background();
		buildMenu();
		drawChannel();
	}
	if(state == slide){
		background();
		slideTransition();
	}
	if(state == menu){
		background();
	}
	if(state == put){
		background();
	}
	if(state == arrange){
		background();
	} 
	if(state == sell){
		background();
	} 
	if(state == results){
		background();
	} 
}
//----------------------------------------------------------------------------
//global draw functions
function background(){
	canvas.width = canvas.width;
	//context.drawImage(background_img,100,0,canvas.width -100,canvas.height);
	context.fillStyle = 'AliceBlue';
	context.fillRect(0,0, canvas.width,canvas.height);
	context.fillStyle = 'red';
	context.fillText(state, canvas.width-150, 100);  
	context.fill();
}

//----------------------------------------------------------------------------
//chassi_select functions

function drawChassis(){
	var x = 150;
	var y = 25;
	for(i = 0; i < chassi_list.length; i++){
		//context.drawImage(chassi_list[i], x, y, 250 ,250);
		chassi_list[i].x = x;
		chassi_list[i].y = y;
		chassi_list[i].drawObject();
		//chassi_list[i]

		if(x == 550){
			y += 300
		}
		if(x == 150){
			x += 400
		} else if(x == 550) {
			x -= 400;
		}  
		
	}
}
//----------------------------------------------------------------------------

//----------------------------------------------------------------------------
//slide functions

function slideTransition(){
	if(past_state = chassi_select){
		if (slide_direction == 'right'){
			if(fakeMenu < 1000){//this is vary quick transition to menu
				context.fillStyle = 'silver';
				context.fillRect(0,0, fakeMenu,canvas.height); 
				duringSlide(true);
			}else{
				context.fillStyle = 'silver';
				resetSlide(false,130,1000,'left');
			}	
	/*
		if(fakeMenu <= 100){
			context.drawImage(menu_end_img,fakeMenu -100,0, 100,canvas.height);
		}else{
			context.drawImage(menu_end2_img,0,-4, 50,canvas.height +8);
			context.drawImage(menu_end_img,fakeMenu -100,0, 100 + fakeMenu/20,canvas.height);
		}
	*/
		} else if (slide_direction == 'left'){
			 if(fakeMenu > 100){//this is vary quick transition to menu
					context.fillStyle = 'silver';
					context.fillRect(0,0, fakeMenu,canvas.height); 
					duringSlide(true);
				}else{
					context.fillStyle = 'silver';
					resetSlide(false,100,100,'left')
					past_state = build;
					state = build;
				}	
		}
		context.fillRect(0,0, fakeMenu,canvas.height); 
	}
}

function duringSlide(if_slide){
	sliding = if_slide;
	if(slide_direction == 'right'){
		fakeMenu += 1 + slideSpeed;
		itemref += 1 + slideSpeed;
	} else if (slide_direction == 'left'){
		fakeMenu -= 1 + slideSpeed;
		itemref -= 1 + slideSpeed;
	}
	slideSpeed = slideSpeed*85/100;

}
function resetSlide(if_slide,slide_speed,fake_menu, slide_dir){
	sliding = if_slide;
	slideSpeed = slide_speed;
	fakeMenu = fake_menu;
	slide_direction = slide_dir;
}
//----------------------------------------------------------------------------

//----------------------------------------------------------------------------
//build functions
function buildMenu(){
	context.fillStyle = 'silver';
	context.fillRect(0,0, fakeMenu,canvas.height); 
}

function drawChannel(){
	circuit_board_lv1.x = 200;
	circuit_board_lv1.y = 50;
	circuit_board_lv1.drawObject(); 

}



//////////////////////////////////////////////////
//mouse functions

document.addEventListener("mousedown", function(){ 
  	mdown = true;
  	if(hovering) pressed = true;
});

document.addEventListener("mouseup", function(){ 
	mdown = false;
});

document.addEventListener('mousemove', function(e){ 
	var rect = canvas.getBoundingClientRect();

    mouse.x = ((e.clientX - rect.left)/canvasWidth)*1000; 
    mouse.y = ((e.clientY - rect.top)/canvasHeight)*1000*(1/resolution); 

   // console.log('canvasWidth'+canvasWidth);
	//console.log('canvasHeight'+canvasHeight);

}, false);

///////////////////////////////////////////////////

///////////////////////////////////////////////////
//CLASSES
///////////////////////////////////////////////////
function object(type,width,height) {
	var temp = {
    	name:'not_named',
    	picture:'no_picture',
    	type:type,
    	x: 0,
		y: 0,
		width: width,
    	height:height,

    	getLeft: function(){ 
    		return this.x;
    	},
    	getRight: function() {
    		return this.x + this.width;
    	},
    	getTop: function() {
    		return this.y;
    	},
    	getBottom: function() {
    		return this.y + this.height;
    	},
    	drawObject:function(){
   			context.drawImage(this.picture, this.x, this.y, this.width, this.height);
		}
	}
     return temp; 
}
///////////////////////////////////////////////////

function chassi(name,picture) {
	var temp = object('chassi',250,250);
	temp.name = name;
	temp.picture = picture;
	return temp;
}

function comChannel(name,picture) {
	var temp = object('communication_channel',700,500);
	temp.name = name;
	temp.picture = picture;
	return temp;
}

///////////////////////////////////////////////////
//FUNCTION THAT UPDATES THE SCREEN SIZE 
///////////////////////////////////////////////////
	//setting up canvas proportional to the screen size
	var canvasHeight = canvas.height;
	var canvasWidth = canvas.width;
	// establishes resolution of the screen 
	var resolution = canvas.width/canvas.height;
//-------------------------------------------------
//fuction that updates the screen size
function updateScreenSize(){
	//updates width to be propotional to screen size
 	canvasWidth = window.innerWidth*2/3;
 	//updates height be propotional to the width
 	canvasHeight = canvasWidth * 1/resolution;	
	//this line updates the size of the canvas to the screen	
	canvas.style.width = canvasWidth+'px';
	canvas.style.height = canvasHeight+'px';
}
//-------------------------------------------------
///////////////////////////////////////////////////


//FINAL GAME LOOP/////////////////////////////////////////
//---------------------------------------------------------
function game_loop(){
	update();
    draw();
}
setInterval(game_loop, 30);
//---------------------------------------------------------
///////////////////////////////////////////////////////////