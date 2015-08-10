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

//global variables////////////////////////

//static variables

//pillar size
//var pwidth = 50;
var pwidth = 30;
var pheight = 200;

//bridge size 
var bwidth = 1200;
var bheight = 60;

//load size
var lwidth = 100;
var lheight = 100;

var iwidth = 30*13/3;
var iheight = 40*13/3;

loadSpeed = 50;//5
var amountRotated = 0;
var rotationdir = 'right';
//movable variables
var menuBox = 100; // defines how far out the menu comes
var fakeMenu = 100;

var loadx = canvas.width-100;
var loady = canvas.height*3/5;

var itemp = {x: 100, y: 160};
var itempB = {x: 100, y: 370};
var moveIndex;
var movePillar;

var PspaceingSize = 97;
var IspaceingSize = 200;
var BspaceingSize = 100;

var test = false;
var testGo = false;
var pass =true;
//---------------------------
//mouse variables

//mouse unit:needed for picking up objects with proportional screen size

var mouse = {x: 1000, y: 1000*(1/resolution)};
var mdown = false;
var carry = false;
var picItem;
var picItemB;

//var elligible_or_pickup = fla


//variables neccesary to make the menu scroll to the side
var canScroll = true;
var scrollStart;
var scrollEnd;
var scrollNum;
var itemref;

//variables necessary for the menu to slide out
var silding = false;
var slideSpeed = 100;
//var slideIn false;
//var canSlide = false;

//var resetItems = false;
var resetSpeed = 100;

var wpos = {x:-350,y:200}
var countdown = 30;
//---------------------------
var money = 500;// the problem with the money is the reult of nath with the 
//prize money from the object that doesnt exist(the last black one)
noMoney = false;
promptcount = 20;
//variabls for subtraction animation
var subMoney = false;
var subLoc = {x:100, y:100};
var subCount = 50;
var subAmount = -1;
//variabls for addition animation
var addMoney = false;
var addLoc = {x:100, y:100};
var addCount = 50;
var addAmount = 100;

var money_add_check = false;
var money_sub_check = true; 

var holding = false;
var arranging = false;
var elligible_for_arrangement = false; 

var onEnd = false;

var winAfter = false;
var victory_lap = true;
var success_bool = false;
var result_time = 2;

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
var win = 7;
// var test = 7;***********************************
/////////////////////////////////////////////


/////////////////////////////////////////
//Image uploads
var empty_pillar_img = document.getElementById('empty_pillar_img')


var marshMellow_pillar_img = document.getElementById('marshMellow_pillar_img')
var marshMellow_pillar_item_img = document.getElementById('marshMellow_pillar_item_img')

var rubber_pillar_img = document.getElementById('rubber_pillar_img')
var rubber_pillar_item_img = document.getElementById('rubber_pillar_item_img')

var plastic_pillar_img = document.getElementById('plastic_pillar_img')
var plastic_pillar_item_img = document.getElementById('plastic_pillar_item_img')

var wood_pillar_img = document.getElementById('wood_pillar_img')
var wood_pillar_item_img = document.getElementById('wood_pillar_item_img')

var rock_pillar_img = document.getElementById('rock_pillar_img')
var rock_pillar_item_img = document.getElementById('rock_pillar_item_img')

var iron_pillar_img = document.getElementById('iron_pillar_img')
var iron_pillar_item_img = document.getElementById('iron_pillar_item_img')

var steel_pillar_img = document.getElementById('steel_pillar_img')
var steel_pillar_item_img = document.getElementById('steel_pillar_item_img')

var gold_pillar_img = document.getElementById('gold_pillar_img')
var gold_pillar_item_img = document.getElementById('gold_pillar_item_img')

var platinum_pillar_img = document.getElementById('platinum_pillar_img')
var platinum_pillar_item_img = document.getElementById('platinum_pillar_item_img')

var nanomesh_pillar_img = document.getElementById('nanomesh_pillar_img')
var nanomesh_pillar_item_img = document.getElementById('nanomesh_pillar_item_img')

//------------------------------------------------------
var empty_bridge_img = document.getElementById('empty_bridge_img')


var marshMellow_bridge_img = document.getElementById('marshMallow_bridge_img')
var marshMellow_bridge_item_img = document.getElementById('marshMallow_bridge_item_img')

var rubber_bridge_img = document.getElementById('rubber_bridge_img')
var rubber_bridge_item_img = document.getElementById('rubber_bridge_item_img')

var plastic_bridge_img = document.getElementById('plastic_bridge_img')
var plastic_bridge_item_img = document.getElementById('plastic_bridge_item_img')

var wood_bridge_img = document.getElementById('wood_bridge_img')
var wood_bridge_item_img = document.getElementById('wood_bridge_item_img')

var rock_bridge_img = document.getElementById('rock_bridge_img')
var rock_bridge_item_img = document.getElementById('rock_bridge_item_img')

var iron_bridge_img = document.getElementById('iron_bridge_img')
var iron_bridge_item_img = document.getElementById('iron_bridge_item_img')

var steel_bridge_img = document.getElementById('steel_bridge_img')
var steel_bridge_item_img = document.getElementById('steel_bridge_item_img')

var gold_bridge_img = document.getElementById('gold_bridge_img')
var gold_bridge_item_img = document.getElementById('gold_bridge_item_img')

var platinum_bridge_img = document.getElementById('platinum_bridge_img')
var platinum_bridge_item_img = document.getElementById('platinum_bridge_item_img')

var nanomesh_bridge_img = document.getElementById('nanomesh_bridge_img')
var nanomesh_bridge_item_img = document.getElementById('nanomesh_bridge_item_img')

//--------------------------------------------------------------------
///misc images

var menu_end_img = document.getElementById('menu_end_img')
var menu_end2_img = document.getElementById('menu_end2_img')
var menu_title_img = document.getElementById('menu_title_img')
var menu_pillar_img = document.getElementById('menu_pillar_img')
var menu_bridge_img = document.getElementById('menu_bridge_img')
var menu_label_img = document.getElementById('menu_label_img')

var background_img = document.getElementById('background_img')
var background2_img = document.getElementById('background2_img')
var success_img = document.getElementById('success_img')
var fail_img = document.getElementById('fail_img')
var victory_img = document.getElementById('victory_img')
var pause_img = document.getElementById('pause_img')
var cant_buy_img = document.getElementById('cant_buy_img')

var go_button_img = document.getElementById('go_button_img')
var pause_button_img = document.getElementById('pause_button_img')
var tips_button_img = document.getElementById('tips_button_img')


var tutorial_note_1_img = document.getElementById('tutorial_note_1_img')
var tutorial_note_2_img = document.getElementById('tutorial_note_2_img')
var tutorial_note_3_img = document.getElementById('tutorial_note_3_img')
var tutorial_note_4_img = document.getElementById('tutorial_note_4_img')
var tutorial_note_5_img = document.getElementById('tutorial_note_5_img')
var tutorial_note_6_img = document.getElementById('tutorial_note_6_img')
var tutorial_note_7_img = document.getElementById('tutorial_note_7_img')
var tutorial_note_8_img = document.getElementById('tutorial_note_8_img')
var tutorial_note_9_img = document.getElementById('tutorial_note_9_img')
var tutorial_note_10_img = document.getElementById('tutorial_note_10_img')
var tutorial_note_11_img = document.getElementById('tutorial_note_11_img')
var tutorial_note_12_img = document.getElementById('tutorial_note_12_img')
var tutorial_note_13_img = document.getElementById('tutorial_note_13_img')
var tutorial_note_14_img = document.getElementById('tutorial_note_14_img')
var tutorial_note_15_img = document.getElementById('tutorial_note_15_img')
var tutorial_note_16_img = document.getElementById('tutorial_note_16_img')
var tutorial_note_17_img = document.getElementById('tutorial_note_17_img')
var tutorial_note_18_img = document.getElementById('tutorial_note_18_img')
var tutorial_note_19_img = document.getElementById('tutorial_note_19_img')
var tutorial_note_20_img = document.getElementById('tutorial_note_20_img')
var tutorial_note_21_img = document.getElementById('tutorial_note_21_img')
var tutorial_note_22_img = document.getElementById('tutorial_note_22_img')
var tutorial_note_23_img = document.getElementById('tutorial_note_23_img')
var tutorial_note_24_img = document.getElementById('tutorial_note_24_img')


var arrow_up_img = document.getElementById('arrow_up_img')
var arrow_right_img = document.getElementById('arrow_right_img')
var arrow_left_img = document.getElementById('arrow_left_img')
var arrow_down_img = document.getElementById('arrow_down_img')
var drag_arrow_1_img = document.getElementById('drag_arrow_1_img')
var drag_arrow_2_img = document.getElementById('drag_arrow_2_img')




//--------------------------------------------------------------------
//load images

var butterfly_img = document.getElementById('butterfly_img')
var elephant_img = document.getElementById('elephant_img')
var rabbit_img = document.getElementById('rabbit_img')
var chicken_img = document.getElementById('chicken_img')
var dog_img = document.getElementById('dog_img')
var horse_img = document.getElementById('horse_img')
var cow_img = document.getElementById('cow_img')

var small_car_img = document.getElementById('small_car_img')
var small_car2_img = document.getElementById('small_car2_img')
var medium_car_img = document.getElementById('medium_car_img')
var medium_car2_img = document.getElementById('medium_car2_img')
var large_car_img = document.getElementById('large_car_img')
var large_car2_img = document.getElementById('large_car2_img')

var truck1_img = document.getElementById('truck1_img')
var truck2_img = document.getElementById('truck2_img')
var truck3_img = document.getElementById('truck3_img')
var truck4_img = document.getElementById('truck4_img')
var truck5_img = document.getElementById('truck5_img')


//--------------------------------------------------------------
var car_sound = document.getElementById("car_sound"); // buffers automatically when created
var menu_open_sound = document.getElementById("menu_open_sound"); 
var menu_close_sound = document.getElementById("menu_close_sound"); 
var money_add_sound = document.getElementById("money_add_sound"); 
var money_subtract_sound = document.getElementById("money_subtract_sound"); 
var place_sound = document.getElementById("place_sound"); 
var animal_sound = document.getElementById("animal_sound"); 
var error_sound = document.getElementById("error_sound");
var button_sound = document.getElementById("button_sound");


var tutorial_sound = document.getElementById("tutorial_sound"); 
var play_sound = document.getElementById("play_sound"); 
var victory_sound = document.getElementById("victory_sound");
var success_sound = document.getElementById("success_sound");



//snd.play();

menuOpen = true;
menuClose = true;
failSound = true;
errorSound = true;

function menu_open(){
	if(menuOpen) menu_open_sound.play();
	menuOpen = false;
	menuClose = true;
}

function menu_close(){
	if(menuClose) menu_close_sound.play();
	menuClose = false;
	menuOpen = true;
}

function  money_add(){
	money_add_sound.play();
}

function  money_subtract(){
	money_subtract_sound.play();
}
function  place(){
	place_sound.play();
}



//<%= image_tag("game_art/background2.png", id: "background2_img") %>
//Car Slowly Driving Away On Dirt Parking Sound effect
//Car Mercury Sable Wagon 2002 Start Up Idle Rev Engine Shut Off Exhaust Perspective Sound effect
//Button Blip Sound effect
//Button High Sound effect
//Spring Sound effect
//Electric Drill Tighten Screw In Wood Sound effect
//Electric Drill Rev Click Stop Sound effect
//Money Change Drop On Cement Sound effect
//Historical Antiques Cash Register Open Ding Sound effect
//Multimedia Pops Sound effect
//Falling Sound effect====================
//Walking Barefoot Sound effect
//Footsteps Walk Slow Leaves Crunch Sound effect







/////////////////////////////////////////



/////////////////////////////////////////
//bridge types
/////////////////////////////////////////
//-----------------------------------------------------------
var emptyB = Bridge('empty',0,empty_bridge_img,0,marshMellow_pillar_item_img);

//var rockB = Bridge('rock',1000,'red',500);
var marshmellowB = Bridge('marshM',2000,marshMellow_bridge_img,500,marshMellow_bridge_item_img);
var rubberB = Bridge('rubber',3000,rubber_bridge_img,750,rubber_bridge_item_img);
var plasticB = Bridge('plastic',4000,plastic_bridge_img,1000,plastic_bridge_item_img);
var woodB = Bridge('wood',6000,wood_bridge_img,1500,wood_bridge_item_img);
var rockB = Bridge('rock',7000,rock_bridge_img,2000,rock_bridge_item_img);
var ironB = Bridge('iron',9000,iron_bridge_img,2500,iron_bridge_item_img);
var steelB = Bridge('steel',10000,steel_bridge_img,3000,steel_bridge_item_img);
var goldB = Bridge('gold',13000,gold_bridge_img,4000,gold_bridge_item_img);
var platinumB = Bridge('platinum',16000,platinum_bridge_img,5000,platinum_bridge_item_img);
var nanomeshB = Bridge('nanomesh',20000,nanomesh_bridge_img,6000,nanomesh_bridge_item_img);
//-----------------------------------------------------------
//pushes the item onto the menu list of bridges
var menuBridges = [get(marshmellowB)]; 
menuBridges.push(get(rubberB)); 
menuBridges.push(get(plasticB)); 
menuBridges.push(get(woodB)); 
menuBridges.push(get(rockB)); 
menuBridges.push(get(ironB)); 
menuBridges.push(get(steelB)); 
menuBridges.push(get(goldB)); 
menuBridges.push(get(platinumB)); 
menuBridges.push(get(nanomeshB)); 

/////////////////////////////////////////
//Pillar types
/////////////////////////////////////////

//-----------------------------------------------------------
var emptyp = Pillar('empty',0,empty_pillar_img,0);
var endP = Pillar('end',100,empty_pillar_img,50);

var marshmellowP = Pillar('marshM',50,marshMellow_pillar_img,100,marshMellow_pillar_item_img);//$5
var rubberP = Pillar('rubber',400,rubber_pillar_img,120,rubber_pillar_item_img);//$15
var plasticP = Pillar('plastic',700,plastic_pillar_img,140,plastic_pillar_item_img);//$30
var woodP = Pillar('wood',1200,wood_pillar_img,160,wood_pillar_item_img);//$50
var rockP = Pillar('rock',2800,rock_pillar_img,180,rock_pillar_item_img);//$75
var ironP = Pillar('iron',3500,iron_pillar_img,200,iron_pillar_item_img);//$100
var steelP = Pillar('steel',5000,steel_pillar_img,240,steel_pillar_item_img);//$150
var goldP = Pillar('gold',6500,gold_pillar_img,280,gold_pillar_item_img);//$200
var platinumP = Pillar('platinum',8000,platinum_pillar_img,300,platinum_pillar_item_img);//$300
var nanomeshP = Pillar('nanomesh',10000,nanomesh_pillar_img,400,nanomesh_pillar_item_img);//$600

//-----------------------------------------------------------
//pushes the item onto the menu list of pillars
var menuPillars = [get(marshmellowP)]; 
menuPillars.push(get(rubberP)); 
menuPillars.push(get(plasticP)); 
menuPillars.push(get(woodP)); 
menuPillars.push(get(rockP)); 
menuPillars.push(get(ironP)); 
menuPillars.push(get(steelP)); 
menuPillars.push(get(goldP)); 
menuPillars.push(get(platinumP)); 
menuPillars.push(get(nanomeshP)); 


//console.log(menuPillars[0].name.length);


/////////////////////////////////////////
//LiveLoad types
/////////////////////////////////////////
//-----------------------------------------------------------
var butterfly = LiveLoad('butterfly',1,60,butterfly_img,100,50); //30
var rabbit = LiveLoad('rabbit',2,130,rabbit_img,110,70);
var chicken = LiveLoad('chicken',3,250,chicken_img,120,80);
var dog = LiveLoad('dog',4,300,dog_img,130,90);
var horse = LiveLoad('horse',5,400,horse_img,150,110);
var cow = LiveLoad('cow',6,550,cow_img,180,140);
var elephant = LiveLoad('cat',7,850,elephant_img,200,150);
var small_car = LiveLoad('small_car',8,1100,small_car_img,230,150);
var small_car2 = LiveLoad('small_car2',9,1600,small_car2_img,280,160);
var medium_car = LiveLoad('medium_car',10,2000,medium_car_img,300,170);
var medium_car2 = LiveLoad('medium_car2',11,2400,medium_car2_img,450,180);
var large_car = LiveLoad('large_car',12,3000,large_car_img,500,190);
var large_car2 = LiveLoad('large_car2',13,4000,large_car2_img,600,230);
var truck1 = LiveLoad('truck1',14,5000,truck1_img,800,170);
var truck2 = LiveLoad('truck2',15,6500,truck2_img,1000,190);
var truck3 = LiveLoad('truck3',16,8000,truck3_img,1400,230);
var truck4 = LiveLoad('truck4',17,10000,truck4_img,1800,280);
var truck5 = LiveLoad('truck5',18,13000,truck5_img,2000,320);




/////////////////////////////////////////////
var endL = LiveLoad('end',8,100000,'purple',1000000,100);

//shuterstock: animal cartoons(relevant),car cartoons(popular)truck cartoons(popular) pg 2


//-----------------------------------------------------------
//pushes the item onto the list of bridges

//active elements
//-------------------------------------------------------------------
var activeBridge = get(emptyB); //what bridge is curretly in use
var activePillars= [get(endP)];   //what bridge is curretly in use 

//activePillars.push(get(marshmellowP));
//var iter = 0

//fills the active pillars with empty pillars
for(var iter = 0; iter < 9; iter++){
	activePillars.push(get(emptyp));
}
activePillars.splice(9, 1, get(endP));



var activeWeights = [get(butterfly)]; //what liveweight is curretly in use
activeWeights.push(get(rabbit));
activeWeights.push(get(chicken));
activeWeights.push(get(dog));
activeWeights.push(get(horse));
activeWeights.push(get(cow));
activeWeights.push(get(elephant));
activeWeights.push(get(small_car));
activeWeights.push(get(small_car2));
activeWeights.push(get(medium_car));
activeWeights.push(get(medium_car2));
activeWeights.push(get(large_car));
activeWeights.push(get(large_car2));
activeWeights.push(get(truck1));
activeWeights.push(get(truck2));
activeWeights.push(get(truck3));
activeWeights.push(get(truck4));
activeWeights.push(get(truck5));



activeWeights.push(get(endL));
var weightIndex = 0;
//-------------------------------------------------------------------

//<img src="game_art/marshMellow_pillar.png"> 
//document.getElementById('image'
//var marshMellow_pillar_img = new Image();
//marshMellow_pillar_img.src = 'game_art/marshMellow_pillar.png';
//<img src="app\assets\images\game_art/marshMellow_pillar.png" id="marshMellow_pillar_img">
//var image = new Image();
//image.src = "marshMellow_pillar.png";

//img.onload = function() {
//};
scroll_counter = 4;
scroll_xloc = 0;
function scrollAnimation(){
	if(scroll_counter >= 3){
		//draw up arrow
		context.drawImage(drag_arrow_1_img,300 - 2*scroll_xloc,20,80,80);
	} else if(scroll_counter >= 1){
		//draw down arrow
		context.drawImage(drag_arrow_2_img,300 - 2*scroll_xloc,20,80,80);
	} else if (scroll_counter == 0){
		scroll_counter = 3;
		scroll_xloc = 0;
	}

}

function scrollTicker(){
	if(step == 22){
		scroll_counter--;
		console.log("tick");
	}
} setInterval(scrollTicker, 1000);

function scrollMover(){
	if(step == 22 && scroll_counter < 3){
		scroll_xloc ++;
		//console.log("tick");
	}
} setInterval(scrollMover, 10);
//-------------------------------------------------------------------

///////////////////////////////////////////////
//********************************************
//TUTORIAL
//********************************************
///////////////////////////////////////////////
var step = 1;
var arrow = true;
var tutor = false;
function tutorial(){
	context.fillStyle = 'red';
	context.font = "small-caps bold 25px Trebuchet MS";
	if(step == 1){ 
	//	context.fillText('Hi there! We are going to build a bridge ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('so that travelers can get across! ',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('click the screen for next! ',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		context.drawImage(tutorial_note_1_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		//scrollAnimation();
	}if(step == 2){ 
	//	context.fillText('Oh look we have our first traveller! ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('We have to build our bridge span ',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('hurry move your mouse over the green store bar to the left to go  into the store! ',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		if (arrow == true) context.drawImage(tutorial_note_2_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		if (arrow == true) context.drawImage(arrow_left_img,150, canvas.height/2 - 200,100,100);
	}if(step == 2){ 
	}if(step == 3){ 
	//	context.fillText('Welcome to the shop this is where you will ',canvas.width/2 - 150, canvas.height/2);
	///	context.fillText('perchase everything you need! ',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('click the screen for next! ',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		arrow = true;
		context.drawImage(tutorial_note_3_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
	}if(step == 2){ 
	}if(step == 4){ 
	//	context.fillText(' this is your money, You can only purchase items that you have enough  ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('money for. ',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('click the screen for next!  ',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		context.drawImage(tutorial_note_4_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		context.drawImage(arrow_right_img,canvas.width - 270,30,100,100);
	}if(step == 2){ 
	}if(step == 5){ 
	//	context.fillText('The first thing we need is a bridge span ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('just press and drag the marshmellow span icon to purchase it!  ',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fill();
		context.drawImage(tutorial_note_5_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		context.drawImage(arrow_down_img,120, canvas.height/2 - 30,100,100);
	}if(step == 6){ 
	//	context.fillText('Great job! now drag the bridge outside of the   ',canvas.width/2 - 150, canvas.height/2);
	///	context.fillText('menu and place the bridge between the two ledges',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('where the arrow is pointing  ',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		context.drawImage(tutorial_note_6_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		context.drawImage(arrow_right_img,canvas.width - 250,400,100,100);
	}if(step == 7){ 
		if(menuBox == 100){
	//	context.fillText('bridge span place here!',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fill();
			context.drawImage(tutorial_note_7_img,canvas.width/2 - 150,canvas.height/2 -100,400,150);
			context.drawImage(arrow_up_img,canvas.width/2, canvas.height - 200,100,100);
		} else {
			//NEEDS ANOTHER HINT
			context.drawImage(tutorial_note_6_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		}
	}
	if(step == 8){ 
	//	context.fillText('alright here comes our first customer!',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fill();
		context.drawImage(tutorial_note_8_img,canvas.width/2 - 150, 100,400,150);
	}if(step == 9){ 
		
	}if(step == 10){ 
	//	context.fillText('Great job! the traveller made it across, and',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('look the traveller gave you some money for your help ',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('click the screen for next!  ',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		context.drawImage(tutorial_note_9_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		context.drawImage(arrow_right_img,canvas.width - 270,30,100,100);
	} 
	if(step == 11){ 
	//	context.fillText('Now lets see if the next traveller will make it accross',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('you can also press enter to send the traveller accross',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fill();
		context.drawImage(tutorial_note_10_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		context.drawImage(arrow_up_img,420, 95,100,100);
	}
	if(step == 12){ 
		arrow = true;
	}
	if(step == 13){ 
	//	context.fillText('Oh no! looks like this traveller didnt make it ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('accross. lets go back to the shop, to buy some support beams. ',canvas.width/2 - 150, canvas.height/2 + 30 );
		//context.fillText('click the screen for next!  ',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		if (arrow == true) context.drawImage(tutorial_note_11_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		if (arrow == true) context.drawImage(arrow_left_img,150, canvas.height/2 - 200,100,100);
		tutor = true;
	}
	if(step == 14){ 
	//	context.fillText('Now lets buy some support beams.    ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('just press and drag one the support beam icons to purchase it!  ',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('makesure you can afford it though ',canvas.width/2 - 150, canvas.height/2 + 60 );
		//context.fillText('click the screen for next!  ',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		arrow = true;
		context.drawImage(tutorial_note_12_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		context.drawImage(arrow_down_img,120, 10,100,100);
	}
	if(step == 15){ 
	//	context.fillText('Great job! now drag the support beam outside of the   ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('menu and place the support beam under the bridge',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('at one of the highlighted locations',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		context.drawImage(tutorial_note_13_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
	}
	if(step == 16){ 
	//	context.fillText('place here!',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fill();
		if(menuBox == 100){
			context.drawImage(tutorial_note_14_img,canvas.width/2 - 150,canvas.height/2 -100,400,150);
			context.drawImage(arrow_down_img,canvas.width/2, canvas.height - 300,100,100);
		} else {
			context.drawImage(tutorial_note_13_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		}
		countdown = 30;
		wpos.x = -350;
		wpos.y = 200;
	}
	if(step == 17){ 
	//	context.fillText('Great job! now lets see if it the traveler makes it accross   ',canvas.width/2 - 150, canvas.height/2);
		context.drawImage(tutorial_note_15_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		context.drawImage(arrow_up_img,420, 95,100,100);

		
		tutor = false;
	}
	if(step == 18){ 
		tutor = true;
	}
	if(step == 19){ 
		//context.fillText('Awseome the traveler made it! Now if you ever want exchange a support    ',canvas.width/2 - 150, canvas.height/2);
		//context.fillText('beam or bridge span all you have to do is drag it',canvas.width/2 - 150, canvas.height/2 + 30 );
		//context.fillText('from the screen to the shop. so lets first grab the support',canvas.width/2 - 150, canvas.height/2 + 60 );
		//	context.fill();
	//	context.drawImage(tutorial_note_16_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
	//	context.fillText('EXPLAIN THE DISTANCE IS A VARIABLE AND RECYCLING   ',canvas.width/2 - 150, canvas.height/2);
	context.drawImage(tutorial_note_17_img,canvas.width/2 - 150,canvas.height/2 -250,400,200);
	context.drawImage(arrow_down_img,canvas.width/2, canvas.height - 300,100,100);
	
	}
	if(step == 20){ 
	//	context.fillText('alright now drag it into the shop    ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('and drop it anywhere',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('from the screen to the shop!',canvas.width/2 - 150, canvas.height/2 + 60 );

		context.fill();
		context.drawImage(tutorial_note_18_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		if (arrow == true) context.drawImage(arrow_left_img,150, canvas.height/2 - 200,100,100);
	}
	if(step == 21){ 
	//	context.fillText('Great job, and look they gave you your money back for recycling!',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('and remember you can do this for bridge spans too.',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('click the screen for next!  ',canvas.width/2 - 150, canvas.height/2 + 60 );	//	context.drawImage(tutorial_note_15_img,canvas.width/2 - 150,canvas.height/2 -100,400,150);
	//	context.fill();
		arrow = true;
		context.drawImage(tutorial_note_19_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		context.drawImage(arrow_right_img,canvas.width - 270,30,100,100);
	}
	if(step == 22){ 
	//	context.fillText('Ok now if you want more materials all you have to do is',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('press and drag anywhere in the shop to scroll the the side',canvas.width/2 - 150, canvas.height/2 + 30 );
	////	context.fill();
		context.drawImage(tutorial_note_20_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		scrollAnimation();
	//	context.drawImage(tutorial_note_15_img,canvas.width/2 - 150,canvas.height/2 -100,400,150);
	}
	if(step == 23){ 
	//	context.fillText('Awsome now lets go back out to the brdige',canvas.width/2 - 150, canvas.height/2);
	//	context.fill();
		context.drawImage(tutorial_note_21_img,canvas.width/2 - 150,canvas.height/2 -100,400,150);
		context.drawImage(arrow_right_img,canvas.width - 250,130,100,100);
		//context.drawImage(tutorial_note_15_img,canvas.width/2 - 150,canvas.height/2 -100,400,150);
	}
	if(step == 24){ 
	//	context.fillText('Alright, last thing you need to know is that the distance   ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('between two pillars matters. ',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('click the screen for next!',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		context.drawImage(tutorial_note_22_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
	}
	if(step == 25){ 
	//	context.fillText('the greater the distance between two pillars   ',canvas.width/2 - 150, canvas.height/2);
	//	context.fillText('the weaker that portion of the bridge is going to be, so be carefull where you put them.',canvas.width/2 - 150, canvas.height/2 + 30 );
	//	context.fillText('click the screen for next!',canvas.width/2 - 150, canvas.height/2 + 60 );
	//	context.fill();
		context.drawImage(tutorial_note_23_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
	}
	if(step == 26){ 
		context.drawImage(tutorial_note_16_img,canvas.width/2 - 150,canvas.height/2 -100,400,200);
		countdown = 30;
		wpos.x = -350;
		wpos.y = 200;
		tutor = false;
	}
	/*
	*/
}
//////////////////////////////////////////////
//********************************************
//////////////////////////////////////////////
//********************************************
//////////////////////////////////////////////

function music(){
	if(state == win){ 
		play_sound.pause();
		play_sound.currentTime = 0;
		if(victory_lap == true) victory_sound.play();
		victory_lap = false;
	}else {
		if (step < 26 || state == pause) {
			play_sound.pause();
			tutorial_sound.play();

		} else {
			tutorial_sound.pause();
			tutorial_sound.currentTime = 0;
			play_sound.play();
			/*
			if(state != success) {
				play_sound.play();
			} else play_sound.pause();
			*/
		}	
	}
}


//**************************MAIN CODE BEGINS********************************
////////////////////////////////////////////////////////////////////////////

function draw(){


	//canvas.drawImage(marshMellow_pillar_img, 0, 0, canvas.width, canvas.height);
	//console.log(onEnd);
	//if(picItem)console.log((carry == true && mdown == true) || holding == true);
	//console.log('state'+ state);
	//console.log('wi'+ weightIndex);
	//console.log('length'+ activeWeights.length);
//	console.log('arranging: '+ arranging);
	//console.log('holding: '+ holding);
	//console.log('loadx: '+ loadx);
	//console.log('state '+ state);
	//	console.log('sound '+ sound);
	//console.log('step: '+ step);
	//console.log('tutor: '+ tutor);
	///console.log('countdown: '+ countdown);
//	console.log('addMoney: '+ addMoney);
	//console.log('end1: '+ activePillars[0].name);




	//console.log('elligibleForPickup: '+ elligibleForPickup());
//	console.log('elligible_for_arrangement '+ elligible_for_arrangement);


//	if(picItem) console.log('PICUP---------------');
//	if(picItem) console.log('PICUP =' + picItem.name);
//	if(picItem) console.log('PICUP---------------');

//	if(picItemB) console.log('PICUPB---------------');
	//if(picItemB) console.log('PICUPB =' + picItemB.name);
//	if(picItemB) console.log('PICUPB---------------');
	
	if(state == play){
		if(testGo){
				background();
				drawObjects();
				testLoad();
				drawMenu(); 
				moneyDisplay();
		//	console.log('loadx' +loadx);
		}else {
			background();
			drawObjects();
			slideMenu();
			drawMenu(); 
			moneyDisplay();
			MouseonEnd()
			resetMenu();
			holdItem();
		//	subtractMoney();
			addToMoney();
			clearPickup();
			elligibleForArrangement();
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
		if(fakeMenu >= 800) {drawItem();}
		if(fakeMenu >= 800) {drawItemB();}
		//elligibleForPickup();
	//	elligibleForPickupB();
		menuScroll();
		resetMenu();
		cantBuy();
		//console.log('mdown: '+mdown)
	//	console.log(elligibleForPickup());
	//	console.log('carry'+ carry);
		//console.log('picItem'+ picItem.name);
		//  console.log('itemp.x: ---'+itemp.x)
		clearPickup();


		pickup();
		//pickupB();
		moneyDisplay();
		subtractMoney();
		holdItem();
		addToMoney();
		
		//console.log(mouse.x);
		//console.log('___'+ menuBox);
	//	console.log('_________'+ state);
	}else if(state == put){
		background();
		drawObjects();
		slideMenu();
		drawMenu(); 
		pickup();
		MouseonEnd()
		placement();
		moneyDisplay();
		subtractMoney();
		holdItem();
		addToMoney();

		//for(i=0;i<activePillars[i].length;i++ ){
		//	console.log(activePillars);
		//}

		//console.log(mouse.x);
		//console.log('___'+ menuBox);
		//console.log('_________'+ state);
	}if(state == pause){
		background();
		drawAnimation();
		drawObjects();
		drawMenu();
		moneyDisplay();
		pauseScreen();

	}if(state == success){
		//moneyDisplay();
		successFunc();

	}if(state == failure){
		background();
		drawObjects();
		drawMenu(); 
		moneyDisplay();
		failureFunc();
	//	moveLoad();
		drawLoad(activeWeights[weightIndex]);
		//moneyDisplay();
	}if(state == win){
		winFunc();
	}
	tutorial();
	music();
//
//	rotate();
}


function moneyDisplay(){
	context.font = "small-caps 48px Trebuchet MS";
    context.fillStyle = 'gold';
    context.fillText('$'+ money, canvas.width-150, 100);
   // context.fillStyle = 'white';
   // context.font = "small-caps 48px Trebuchet MS";
    //context.fillText(money, canvas.width-100, 100);

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
	context.drawImage(background_img,100,0,canvas.width -100,canvas.height);
	if (state < 4 && testGo == false  && step > 1 && tutor == false) timerAnimation();
	//context.fillStyle = 'AliceBlue';
	//context.drawImage(activeWeights[weightIndex].picture,canvas.width/2,canvas.height/2,100,100);
//	context.fillRect(0,0, canvas.width,canvas.height);  
	//context.fill();
}

function drawAnimation(){
	context.save();
   	context.translate(200, 0);     
   	context.scale(-1, 1);
	context.drawImage(activeWeights[weightIndex].picture,wpos.x,wpos.y,100,100);
	context.restore();
	if(countdown > 25)context.drawImage(background2_img,100,0,canvas.width -100,canvas.height);
}

function timerAnimation(){
	drawAnimation();
	if (countdown > 25){
		wpos.y -=.6; 
	} else if (countdown <= 25){
		wpos.y +=.6; 
		wpos.x +=-.5; 
	}
	//if(countdown > 25)context.drawImage(background2_img,100,0,canvas.width -100,canvas.height);
	
	if(countdown <= 0 && step > 7 && tutor == false && state == play && fakeMenu == 100){
		testGo = true;
	} 
}

function timerCount(){
	if (state != pause && step > 1)countdown -= 1;
} 
setInterval(timerCount, 1000);

function drawObjects(){
	drawBridge(activeBridge);
	drawPillars(activePillars);
	drawButtons();
	//drawLoad(activeBridge);
}

function drawButtons(){
	context.drawImage(go_button_img,420,20, 100,70);
	context.drawImage(pause_button_img,540,20, 100,70);
	//context.drawImage(tips_button_img,360,20, 100,70);


}

function pauseScreen(){
	//context.fillStyle = 'rgba(0, 0, 0, 0.2)';
	//context.fillRect(0,0, canvas.width,canvas.height);  
	//context.font = "48px serif";
   // context.fillStyle = 'red';
   // context.fillText("PAUSE", canvas.width/2, canvas.height/2);
	//context.fill();
	context.fillStyle = 'rgba(0, 0, 0, 0.2)';
	context.fillRect(0,0, canvas.width,canvas.height);  
	context.drawImage(pause_img,canvas.width/2 - 100, canvas.height/2 -50,300,100);
}

function drawMenu(){
	context.fillStyle = 'MediumSeaGreen';
	if(state == play){
		menuBox = 100;
		if(fakeMenu > 100){//this is vary quick transition to menu
			sliding = true;
			context.fillStyle = 'MediumSeaGreen';
			context.fillRect(0,0, fakeMenu,canvas.height); 
			console.log('sliding1');
			fakeMenu -= 1 + slideSpeed;
	  		itemref -= 1 + slideSpeed;
	  		slideSpeed = slideSpeed*85/100;
		}else{
			sliding = false;
			slideSpeed = 100;
			fakeMenu = 100;
		}	
	}if(state == menu){
		if(fakeMenu < 800){//this is vary quick transition to menu
			arrow = false;

			noMoney = false;//this is for the "not enough money error"
			sliding = true;
			context.fillStyle = 'MediumSeaGreen';
			context.fillRect(0,0, fakeMenu,canvas.height); 
			console.log('sliding2');
			fakeMenu += 1 + slideSpeed;
	  		itemref += 1 + slideSpeed;
	  		slideSpeed = slideSpeed*85/100;
		}else{
			sliding = false;
			slideSpeed = 100;
			fakeMenu = 800
			menuBox = 800;
		}	
		
	}if(state == put){
		menuBox = 100;
		if(fakeMenu > 100){//this is vary quick transition to menu
			sliding = true;
			context.fillStyle = 'MediumSeaGreen';
			context.fillRect(0,0, fakeMenu,canvas.height); 
			console.log('sliding3');
			fakeMenu -= 1 + resetSpeed;
	  		itemref -= 1 + resetSpeed;
	  		slideSpeed = resetSpeed*90/100;

		}else{
			sliding = false;
			slideSpeed = 100;
			fakeMenu = 100;
		}	
	}
	
	context.fillRect(0,0, menuBox,canvas.height); 
	
	if(fakeMenu <= 100){
		context.drawImage(menu_end_img,fakeMenu -100,0, 100,canvas.height);
		context.drawImage(menu_label_img,fakeMenu -100,0, 100,canvas.height);
	}else{
		context.drawImage(menu_end2_img,0,-4, 50,canvas.height +8);
		context.drawImage(menu_end_img,fakeMenu -100,0, 100 + fakeMenu/20,canvas.height);
		if(fakeMenu <= 300) { context.drawImage(menu_label_img,fakeMenu -100,0, 100,canvas.height);
		}else context.drawImage(menu_label_img,fakeMenu -80,0, 100,canvas.height);
	}
}

function slideMenu(){
	if (mouse.x < menuBox && mdown == false && sliding == false && 
		step > 1 && step != 8 && step != 11 && step != 20 && step != 10 
		&& step != 17 && step != 19 && step != 24 && step != 25 && step != 26){
		state = menu;
		menu_open();
	}else if(mdown == true && carry == true && holding == true && state == menu && mouse.x > menuBox && sliding == false){
		if (step == 6 || step == 7 ||step == 15 ||step == 16  || step > 25) {
			if(step == 6 || step == 15) step += 1;
			state = put;
			menu_close();
		}
	}else if(state == menu && mouse.x > menuBox && sliding == false){
		picItem = null;
		picItemB = null;
		if (step == 23 || step > 25) {
			state = play;
			menu_close();
		}
		if (step == 23) step += 1; 
	}else if(state == put && mouse.x < menuBox && sliding == false){
		state = menu;
		menu_open();
	}

}

function drawItem(){
	var itemx = itemp.x;
	var itemy = itemp.y;

	if(step == 2 || step == 13) step += 1;

	context.font = "24px serif";
    for(var i = 0; i < menuPillars.length; i++){
    	if( - 100 < itemx && itemx < 700){
	    	// context.fillStyle = 'red';
		   // context.fillText(menuPillars[i].name, itemx - menuPillars[i].name.length*5/2, itemy -10);
		  //   context.fillStyle = menuPillars[i].picture;
		  	//context.fillStyle = 'red'
		 	context.drawImage(menu_title_img,300,-60, 700,1000);
		 	context.drawImage(menu_pillar_img, 120,100, 220,45);
		 	context.drawImage(menu_bridge_img, 120,350, 200,40);
		    drawI(menuPillars[i].item,itemx,itemy);
		    if(fakeMenu >= 200) context.drawImage(menu_end2_img,0,-4, 50,canvas.height +8);
		    context.drawImage(menu_end_img,fakeMenu -100,0, 140,canvas.height);
		    context.drawImage(menu_label_img,fakeMenu -80,0, 100,canvas.height);
		 

		   // context.fillRect(itemx,itemy, pwidth/2,pheight/2);  
		    // context.fillStyle = 'red';
		    //context.fillText(menuPillars[i].price, itemx + menuPillars[i].name.length/2 -5, itemy + pheight -80);
		}
	    itemx += IspaceingSize;
	}
}
//**************************************************************************
//BRIDGE FUNCTIONS
//**************************************************************************
function drawItemB(){
	var itemx = itempB.x;
	var itemy = itempB.y;

	context.font = "24px serif";
    for(var i = 0; i < menuBridges.length; i++){
    	if( - 100 < itemx && itemx < 700){
	    	// context.fillStyle = 'red';
		  //  context.fillText(menuBridges[i].name, itemx - menuBridges[i].name.length*5/2 + 50, itemy -10);
		  //   context.fillStyle = menuBridges[i].picture;
		//  context.drawImage(menu_title_img,100,100, 200,300);
		  drawI(menuBridges[i].item,itemx,itemy + 30);
		   if(fakeMenu >= 200) context.drawImage(menu_end2_img,0,-4, 50,canvas.height +8);
		  context.drawImage(menu_end_img,fakeMenu -100,0, 140,canvas.height);
		   context.drawImage(menu_label_img,fakeMenu -80,0, 100,canvas.height);

		  //  context.fillRect(itemx,itemy + 30, bwidth/10,bheight/5);  
		 //    context.fillStyle = 'red';
		 //   context.fillText(menuBridges[i].price, itemx + menuBridges[i].name.length/2 -5 + 50, itemy + pheight -80);
		}
	    itemx += IspaceingSize;
	}
}

/*
function elligibleForPickupB(){
	if(mdown == false){ 
		var itemx = itempB.x;
		var itemy = itempB.y;
		
	    for(var i = 0; i < menuBridges.length; i++){
			if((itemx + 2 <= mouse.x  && mouse.x <= itemx + (bwidth/10) + 2) && 
					(itemy + 30 <= mouse.y && mouse.y <= itemy + 30 + bheight/5)){
				console.log('elligible for pickup BB');
				picItemB = menuBridges[i];
				return true;
			}
			itemx += 100;
		}
		carry = false;
		return false; 
	}
}


function pickupB(){
	if(elligibleForPickupB()){
			 console.log('pickup'); 
			 carry = true;
	}
	if(picItemB) {
		context.fillStyle = picItemB.picture;
	}
	if(carry == true && mdown == true) {
	  	if((money >= picItemB.price) || (holding == true) || state == play || state == put  && arranging == true) {
		  	context.fillRect(mouse.x - pwidth/2, mouse.y - pheight/2, pwidth,pheight);  
		  	context.fillText(picItemB.name,mouse.x - pwidth/2- picItemB.name.length*5/2, mouse.y - pheight/2 -10);

		  	//this portion allows the subtractMoney() to work
		  	//------------------------------------------------
		  	if(subMoney == false & holding == false & state == menu){
			  	subLoc.x = mouse.x - pwidth/2;
			  	subLoc.y = mouse.y - pheight/2;
			  	console.log('subAmount');
			  	subAmount = picItemB.price;
			  	money -= subAmount;
			  	subCount = 50;
		  	}
		  	subMoney = true;
		  	holding = true;
		  	//------------------------------------------------
		  	
	 	} else {
	 		noMoney = true;
	 		promptcount = 50;
	 	}
	}			
}
*/
//**************************************************************************


function elligibleForPickup(){
	if(mdown == false && holding == false && state == menu){ 
		var itemx = itemp.x + 60;
		var itemy = itemp.y + 60;
		//added for bridges
		var itemBx = itempB.x + 60;
		var itemBy = itempB.y + 60;

		
	    for(var i = 0; i < menuPillars.length; i++){
			if((itemx - 40 <= mouse.x  && mouse.x <= itemx + (pwidth/2) + 50) && 
					(itemy -30 <= mouse.y && mouse.y <= itemy + pheight/2 - 10)){
				console.log('elligible for pickup');
				picItem = menuPillars[i];
				return true;
			}else if((itemBx -40 <= mouse.x  && mouse.x <= itemBx + (pwidth/2) + 50) && 
					(itemBy -30 <= mouse.y && mouse.y <= itemBy + 30 + pheight/2 - 10)){
				console.log('elligible for pickup BB');
				picItemB = menuBridges[i];
				return true;
			}
			itemx += IspaceingSize;
			itemBx += IspaceingSize;
		}
		carry = false;
		//if (arranging == true) picItem = null;
		//if (arranging == true) picItemB = null;

		return false; 
	}
	//if(carry == false) return false;
}

function pickup(){
	if(elligibleForPickup() && step > 4 && mouse.x < 700){
			 console.log('pickup'); 
			 carry = true;
	}
	if(picItem && step > 6) {
		pickupCheck(picItem)
	} else if(picItemB) {
		pickupCheck(picItemB)
	}

	
}

function pickupCheck(picItem){
	//context.fillStyle = picItem.picture;
	if(picItem.type == 'pillar'){
		if(carry == true && mdown == true) {
		  	if((money >= picItem.price) || (holding == true) || state == play || state == put  && arranging == true) {
		  		if(step == 14) step += 1;
			  //	context.fillRect(mouse.x - pwidth/2, mouse.y - pheight/2, pwidth,pheight);  	
			  	drawP(picItem.picture, mouse.x - pwidth/2, mouse.y - pheight/2);
			  //	context.fillText(picItem.name,mouse.x - pwidth/2- picItem.name.length*5/2, mouse.y - pheight/2 -10);

			  	//this portion allows the subtractMoney() to work
			  	//------------------------------------------------
			  	if(holding == false && state == menu){
				  	if(subMoney == false){
					  	subLoc.x = mouse.x - pwidth/2;
					  	subLoc.y = mouse.y - pheight/2;
					  	console.log('subAmount');
					  	subCount = 50;
				  	}
				  	subAmount = picItem.price;
					money -= subAmount;
			 	}
			    if(subAmount > 0) subMoney = true;
			  	holding = true;
			  	//------------------------------------------------
			  	
		 	} else {
		 		noMoney = true;
		 		promptcount = 10;
		 	}
		}		
	//************************************************************
	//this allows for the function to work with bridges as well
	} else if(picItem.type == 'bridge'){
	//	context.fillStyle = picItemB.picture;
		if(carry == true && mdown == true) {
		  	if((money >= picItemB.price) || (holding == true) || state == play || state == put  && arranging == true) {
			  	if(state == menu){
			  		if(step == 5) step += 1;
			  		//context.fillRect(mouse.x - bwidth/8, mouse.y - bheight/8, bwidth/4,bheight/4);  
			  		//context.fillText(picItemB.name,mouse.x - pwidth/2- picItemB.name.length*5/2, mouse.y - pheight/2 -10 + 30);
			  		drawB(picItemB.picture,mouse.x - bwidth/4, mouse.y - bheight/4, bwidth/2,bheight/2);
			 	} else if(state == put) {
			 		//context.fillRect(mouse.x - bwidth/2, mouse.y - bheight/2, bwidth,bheight);  
			  		//context.fillText(picItemB.name,mouse.x - pwidth/2- picItemB.name.length*5/2, mouse.y - pheight/2 -10);
			  		drawB(picItemB.picture,mouse.x - bwidth/2, mouse.y - bheight/2,bwidth -300, bheight);
			 	}

			  	//this portion allows the subtractMoney() to work
			  	//------------------------------------------------
			  	if(holding == false && state == menu){
				  	if(subMoney == false ){
					  	subLoc.x = mouse.x - bwidth/2;
					  	subLoc.y = mouse.y - bheight/2;
					  	console.log('subAmount');
					  	subCount = 50;
				  	}
				  	subAmount = picItemB.price;
					money -= subAmount;
				}
			  	if(subAmount > 0) subMoney = true;
			  	holding = true;
			  	//------------------------------------------------
			  	
		 	} else {
		 		noMoney = true;
		 		promptcount = 10;
		 	}
		}			
	}

}

function holdItem(){
	if(holding == true && mdown == false){
		holding = false;
	//this portion allows the addToMoney() to work
  	//------------------------------------------------
  //	if(money_add_check == true)
	  	if(addMoney == false){
		  	addLoc.x = mouse.x - pwidth/2;
		  	addLoc.y = mouse.y - pheight/2;
		  	console.log('subAmount');
		  	addCount = 50;
	  	}
	  	if (picItem) {
		  		addAmount = picItem.price;
		  	} else if (picItemB){ 
		  		addAmount = picItemB.price;
		  	}
		  	money += addAmount;

  		addMoney = true;
  		arranging = false;
 // 		picItem = null;
  //		picItemB = null;
  	//------------------------------------------------
	} 
}

function clearPickup(){
	if(holding == false && elligibleForPickup() == false && arranging == false) {
		picItem = null;
  		picItemB = null;
  	}
}

function cantBuy(){
	context.font = "small-caps bold 25px Trebuchet MS";
    context.fillStyle = 'red';
	if(noMoney == true && promptcount > 0) {
		promptcount -= 1;
		context.drawImage(cant_buy_img,70,30);
		picItemB = null;
  		picItem = null;
  		holding = false;
		//context.fillText('sorry, not enough money', canvas.width/2 -70, 50);

		if (errorSound) error_sound.play();
		errorSound = false;
	} else {
		errorSound = true;
		noMoney == false;
	}
}

function subtractMoney(){
	context.font = "small-caps bold 20px Trebuchet MS";
    context.fillStyle = 'red';
	if(subMoney == true && subCount > 0){
		subCount  -= 2;
		context.fillText('-$'+subAmount, subLoc.x, subLoc.y + subCount);
		if(subCount > 30)money_subtract();
	} else{
		subMoney = false;
	}

}

function addToMoney(){
	context.font = "small-caps bold 20px Trebuchet MS";
    context.fillStyle = 'green';
	if(addMoney == true && addCount > 0 ){
		addCount  -= 2;
		context.fillText('+$'+addAmount, addLoc.x, addLoc.y + addCount);
		money_add();
		if(step == 20) step += 1;
	} else{
		addMoney = false;
	}

}

function menuScroll(){
	console.log('mdown: '+ mdown)
	if(carry == false && mdown != false) {
			//console.log('scroll working');
		if(elligibleForPickup() == undefined){
		//console.log('mdown: '+mdown)
			console.log('not elligibleForPickup');
		  //	console.log('scroll working');
		  	if(canScroll == true) {
		  		if(step == 22) step += 1;

		  		scrollStart = mouse.x
		  		scrollEnd = mouse.x;
		  		itemref = itemp.x 
		  		canScroll = false;
		  	}else{
		  		scrollEnd = mouse.x;
		  	}

		  	console.log('scrollNum+++' + scrollNum)
		  	console.log('itemp.x+++: '+ itemp.x);

		  	if(itemp.x < 550 &&  300 < (itemp.x + IspaceingSize*menuPillars.length)){
		  		scrollNum = scrollEnd - scrollStart;	
		  		itemp.x = itemref + scrollNum;
		  		itempB.x = itemref + scrollNum;
		  		//resetItems = false;
		  		resetSpeed = itemp.x/6;

		  	}else {
		  		while(itemp.x > 530){
		  			itemp.x -= .001;
		  			itempB.x -= .001;
		  			itemref -= .001;	
		  		}
		  		while(320 > (itemp.x + IspaceingSize*menuPillars.length)){
		  			itemp.x += .001;
		  			itempB.x += .001;	
		  			itemref += .001;

		  		}
		  	}
	 	 }		
	}	
	if(mdown == false) {
		canScroll = true; 
	}

}

function resetMenu(){
	if (state == play){
		itemp.x = 100;
		itempB.x = 100;
		itemref = 100;
		scrollEnd = 0;
		scrollStart = 0;
		scrollNum = 0;
	}
	if(state == menu & canScroll == true && fakeMenu == 800){
		if(itemp.x > 100){
			console.log('fixing');
			itemp.x -= 1 + resetSpeed;
			itempB.x -= 1 + resetSpeed;
	  		itemref -= 1 + resetSpeed;
	  		resetSpeed = resetSpeed*80/100;
		} else {
			resetSpeed = 100;
		}
	}	
}

function placement(){
	var xval= 100 + PspaceingSize;
	//var yval 100;
	for(var i = 1; i < activePillars.length - 1; i++){
		context.fillStyle = 'rgba(255,255,0,0.5)';
		context.fillRect(xval,canvas.height*3/5 + 60, pwidth,pheight);  
 		context.fill();
 		xval += PspaceingSize;
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
		if(activePillars[i]) {
		//	context.fillStyle = activePillars[i].picture;}
	//	context.fillRect(xval,canvas.height*3/5 + 60, pwidth,pheight); 
			drawP(activePillars[i].picture,xval,canvas.height*3/5 + 60) 
 	//	context.fill();
 		}
 		xval += PspaceingSize;
	}
	
    
}
//------------------------------------------

//function that draws the bridge
//------------------------------------------
function drawBridge(type) {
	//draws bridge
	//context.fillStyle = type.picture;
   // context.fillRect(0,canvas.height*3/5, bwidth, bheight);  
 	//context.fill();
 	drawB(type.picture,100,canvas.height*3/5, bwidth -300, bheight);
}
//------------------------------------------

//functions dealing with the movement and drawing of the load
///////////////////////////////////////////////
//draws load
//------------------------------------------
/*
function drawLoad(type){
	context.fillStyle = activeWeights[weightIndex].picture;
    context.fillRect(loadx,loady, lwidth,lheight);  
 	context.fill();
}
*/
//------------------------------------------
function moveLoad(){
	loadx -= loadSpeed;

}

function drawLoad(type){
	console.log(type.s);
	console.log('name: '+ type.name);
	console.log('typename: '+type.name);

	var cx = loadx + 150;
	var cy = loady - type.s/2;

	var x = -type.s/2;
	var y = -type.s/2;
	var w = 20;
	var h = 20;
	var deg = 45;

	context.save();

	context.translate(cx, cy);
	context.rotate(deg * ((Math.PI/180)/45)*amountRotated);

	context.drawImage(type.picture,x,y + 5, type.s,type.s);

	context.restore();
	if(state == failure){
			amountRotated +=6 
			loady -= (100 - amountRotated)/10;
	
	} else {
		if(type.number < 8){
			animal_sound.play();
			if(amountRotated >= 30){
				rotationdir = 'left';
			} else if(amountRotated <= -30){
				rotationdir = 'right'
			}
			if(rotationdir == 'right'){
				amountRotated += 4;
			} else if(rotationdir =='left'){
				amountRotated -= 4;
			}
		} else car_sound.play();	
	}

	//if(state == failure) 
}
//------------------------------------------

function testLoad(){
	if(test == false){
		//loadx = canvas.width-100;
		//loady = canvas.height*3/5 - 100;
	}

	drawLoad(activeWeights[weightIndex]);
	moveLoad();

	failSound = true;
	successSound = true;
	if (step == 11 || step == 17) step += 1;

	test = true
	var pilA;
	var locA;
	var pilB;
	var locB;

	var support;
	var distance;
	var totalS;
	var xval = 100;

	//console.log('f');
	//	if(pass = true) {}

	if(test){
		if(activeBridge == emptyB) state = failure;
	//	console.log('fav');
		for(var i =0; i < activePillars.length; i++){
			if(activePillars[i] != emptyp) {
				if(pilA) {
					pilB = pilA;
					locB = locA;
				}
				pilA = activePillars[i].load;
				locA = xval;		
			}
//console.log('fa');
//console.log('locB'+locB);
			//this line make the test fail in the center of the two pillars
			if(locB <loadx && loadx < locA - ((locA-locB)/2)){//- ((activeWeights[weightIndex].s))
//console.log('f');
				support = activeBridge.load + pilA + pilB;
				distance = (locA - locB)/50; //originally divided by 15

				totalS = support/distance;

	//			console.log('s ' + support);
	//			console.log('d ' + distance);
	//			console.log('t ' + totalS);

				if(totalS < activeWeights[weightIndex].weight){
	//				console.log('failure');
					state = failure;
					amountRotated = 0;
				}else { console.log('ptrue'); pass = true; }
			}

		xval += PspaceingSize;
		}
	//	console.log('pass ' + pass);
		if(pass && loadx < -activeWeights[weightIndex].s*3/2) {
			state = success;
			amountRotated = 0;
		}	
	}
}

function successFunc(){
	countdown = 30;
	wpos.x = -350;
	wpos.y = 200;

	car_sound.pause();
	car_sound.currentTime = 0;
	animal_sound.pause();
	animal_sound.currentTime = 0;

	if (step == 8) step += 1;

	loadx = canvas.width-100;
	if(testGo) {
			money += activeWeights[weightIndex].reward; 
			addAmount = activeWeights[weightIndex].reward;
			addLoc.x = 800;
			addLoc.y = 50;
	}

	if(testGo && weightIndex < activeWeights.length -1){ weightIndex += 1; }
	testGo = false;
	//context.font = "small-caps bold 120px Trebuchet MS";
	//context.fillStyle = 'red';
	if(weightIndex >= activeWeights.length -1){
		state = win;
	} else {
		//context.fillText('SUCCESS!',canvas.width/2 - 200, canvas.height/2);
		if(successSound) success_sound.play();
		successSound = false;
		context.drawImage(success_img,canvas.width/2 - 200, canvas.height/2 -110,900,180);
		success_bool = true;
	}
	//context.fill();
} 

function failureFunc(){
	countdown = 30;
	wpos.x = -350;
	wpos.y = 200;

	car_sound.pause();
	car_sound.currentTime = 0;
	animal_sound.pause();
	animal_sound.currentTime = 0;
	if(failSound)fall_sound.play();
	failSound = false;


	//if (step == 12) step += 1;
	//loadx = canvas.width-100;
	//if(testGo && weightIndex < activeWeights.length -1){ weightIndex += 1; }
	testGo = false;
	//context.font = "small-caps bold 120px Trebuchet MS";
	//context.fillStyle = 'red';
	//context.fillText('FAIL',canvas.width/2 - 100, canvas.height/2);
	//context.font = "small-caps bold 50px Trebuchet MS";
	//context.fillText('sorry try again!',canvas.width/2 - 150, canvas.height/2 + 30 );
	//context.fill();
	context.drawImage(fail_img,canvas.width/2 - 150, canvas.height/2 -100,400,200);
	
} 


function winFunc(){
	car_sound.pause();
	car_sound.currentTime = 0;
	animal_sound.pause();
	animal_sound.currentTime = 0;

	loadx = canvas.width-100;
	//if(testGo && weightIndex < activeWeights.length -1){ weightIndex += 1; }
	testGo = false;
	//context.font = "small-caps bold 120px Trebuchet MS";
	//context.fillStyle = 'gold';
	//context.fillText('YOU WIN!!!',canvas.width/2 - 300, canvas.height/2);
	//context.fill();
	context.drawImage(victory_img,canvas.width/2 - 300, canvas.height/2 -100,700,150);



}

function elligibleForArrangement(){
	if (canvas.height*3/5 < mouse.y && mouse.y < canvas.height*3/5 + bheight){
		elligible_for_arrangement = 'bridges';
	} else if (canvas.height*3/5 + 70 < mouse.y && mouse.y < canvas.height*3/5 + 60 + pheight){
		elligible_for_arrangement = 'pillars';
	}else {
		elligible_for_arrangement = false;
	}

} 

function arrangePillars(){
	if(testGo == false){
		var xval= 100;
		for(var i = 0; i < activePillars.length; i++){
			if((xval < mouse.x  && mouse.x < xval + pwidth + 20 ) && 
				(canvas.height*3/5 + 60 < mouse.y && mouse.y < canvas.height*3/5 + 60 + pheight) &&
				onEnd == false){
					//console.log('add to the active list');
				if(activePillars[i] != emptyp && activePillars[i] != endP){
					moveIndex = i;
					movePillar = activePillars[i];
		 			picItem = activePillars[i];
		 			activePillars.splice(i, 1, emptyp);
		 			carry = true;
		 			arranging = true;
		 			state = put;
		 			place();
		 			if (step == 19) step += 1;
		 		}
					//activePillars.splice(i, 1, picItem);
					//activePillars[i] = picItem;
					//context.fill();
			}	
			xval += PspaceingSize;
		}
	}
}

function placePillars(){
	var xval= 100;
		var worked = false;
		for(var i = 0; i < activePillars.length; i++){
			if((xval -30 < mouse.x  && mouse.x < xval + pwidth/2 + 40) && 
				(canvas.height*3/5 + 60 < mouse.y && mouse.y < canvas.height*3/5 + 60 + pheight/2) &&
				onEnd == false && activePillars[i].name != 'end'){
				if(activePillars[i].name != 'end' && activePillars[i].name != 'empty' ){
	//		context.font = "small-caps bold 25px Trebuchet MS";
   	//		context.fillStyle = 'red';
	//		context.drawImage(cant_buy_img,70,30);
		}else {
		 			console.log('add to the active list');
		 			activePillars.splice(i, 1, picItem);
		 			worked = true;
		 			holding = false;
		 			arranging = false;
		 			place();
		 			if(step == 16) step += 1;
		 			picItem = null;  
		 			//activePillars[i] = picItem;
		 		//	context.fill();
		 		}
			}	
				xval += PspaceingSize;
		}  
		if(worked == false && arranging == true){
			//this makes the pillar return to its original place
			//if it is not placed in the correct location
			console.log('this operation worked')
			if (movePillar) {
				activePillars.splice(moveIndex, 1, movePillar); 
				holding = false;
				arranging = false;
				place();
				picItem = null;
				//picItem = null;
			}
		}
}

//************************************************************************************
//FUNCTION for Bridges
function arrangeBridges(){
	if(testGo == false && step > 25){
		console.log('arrangingbridges');
		if((mouse.x > 100 && mouse.x < canvas.width) &&
			(canvas.height*3/5 < mouse.y && mouse.y < canvas.height*3/5 + bheight + 10)){
			if(activeBridge != emptyB){
				console.log('arrangingbridges is working');
	 			picItemB = activeBridge;
	 			activeBridge = emptyB;
	 			carry = true;
	 			arranging = true;
	 			state = put;
	 			place();
	 		}
		}	
	}
}

function placeBridges(){
	var worked = false;
	if((mouse.x > 100 && mouse.x < canvas.width) &&
			(canvas.height*3/5 < mouse.y && mouse.y < canvas.height*3/5 + pheight/2 + 10)){
		if(activeBridge.name != 'end' && activeBridge.name != 'empty' ){
	//		context.font = "small-caps bold 25px Trebuchet MS";
   	//		context.fillStyle = 'red';
	//		context.drawImage(cant_buy_img,70,30);
		}else {
			console.log('add to the active list');
			activeBridge = picItemB;
			worked = true;
			holding = false;
			arranging = false;
			place();
			if(step == 7) step += 1;  
			picItemB = null;
			//activePillars[i] = picItem;
			//	context.fill();
		}
	}	
	if(worked == false && arranging == true){
		//this makes the pillar return to its original place
		//if it is not placed in the correct location
		console.log('this operation worked')
		if (picItemB.type == 'bridge') {
			activeBridge = picItemB;
			holding = false;
			arranging = false;
			place();
			picItemB = null;
			//picItem = null;
		}
	}
}
//************************************************************************************

function MouseonEnd(){
	if(((mouse.x > 100 && mouse.x< 100 + pwidth/2 + 10 ) && 
		(canvas.height*3/5 + 60 < mouse.y && mouse.y < canvas.height*3/5 + 60 + pheight/2 + 10) ) ||
	//-----------------------------------------------------------------------------------------------
	((mouse.x > (100 + (PspaceingSize*(activePillars.length - 1))) && mouse.x < (100 + (PspaceingSize*(activePillars.length - 1)))  + pwidth/2 + 10 ) && 
		(canvas.height*3/5 + 60 < mouse.y && mouse.y < canvas.height*3/5 + 60 + pheight/2 + 10) ))
	{
		onEnd = true;
	} else 
		onEnd = false;
}
//////////////////////////////////////////////////////////////////
addEventListener("keydown", function(key){ 
    if(key.keyCode == 13 && state == play && step > 5 && tutor == false && step != 10){
        testGo = true;
    }
});
/*
addEventListener("keydown", function(key){ 
    if(key.keyCode == 80 && state == play && fakeMenu == 100){//27 for escape
    	console.log("ppppppppppaaaaaaaaaaaauuuseeeeeee");
    	step = 30
    	tutor = false;
        state = pause;
     //   weightIndex = 15;
    }else  if(key.keyCode == 80 && state == pause){
        state = play ;
    }
});
*/

function pauseButton(){
	 if(state == play && fakeMenu == 100 && testGo == false){
	 	button_sound.play();
    	step = 30
    	tutor = false;
        state = pause;
    }else  if(state == pause){
    	button_sound.play();
        state = play ;
    }
}

function goButton(){
	 if(state == play && testGo == false && step > 5 && tutor == false && step != 10){
	 	button_sound.play();
        testGo = true;
    }
}

document.addEventListener('mousemove', function(e){ 
	var rect = canvas.getBoundingClientRect();

    mouse.x = ((e.clientX - rect.left)/canvasWidth)*1000; 
    mouse.y = ((e.clientY - rect.top)/canvasHeight)*1000*(1/resolution); 

   // console.log('canvasWidth'+canvasWidth);
	//console.log('canvasHeight'+canvasHeight);

}, false);


document.addEventListener("mousedown", function(){ 
  	mdown = true;
  	if(state == play){
  		if (elligible_for_arrangement == 'pillars'){
  			arrangePillars();
  		} else if(elligible_for_arrangement == 'bridges') {
  			arrangeBridges();
  		}
	}
});

document.addEventListener("mouseup", function(){ 
	if(step == 1 || step == 3 || step == 4  || step == 10 
	  || step == 21 || step > 23){
		step += 1;
	}

	mdown = false;
  	carry = false;
  	finishResult();


	if(state == play){
		if((540 < mouse.x && mouse.x < 640) &&
			(20 < mouse.y && mouse.y < 90)){
			pauseButton();
		//240,20, 100,60
		}else if((420 < mouse.x && mouse.x < 520) &&
			(20 < mouse.y && mouse.y < 90)){
			goButton();
		}
	}else if(state == pause){
		if((540 < mouse.x && mouse.x < 640) &&
			(20 < mouse.y && mouse.y < 90)){
			pauseButton();
		}
	}

	if(state == menu){
		
	}if(state == put){
		if (picItem) placePillars();
		else if (picItemB) placeBridges();
		state = play;
		//picItem = emptyp;
	}
});

function finishResult(){
	if(state == success || state == failure) {
  		loadx = canvas.width-100;
  		loady = canvas.height*3/5
  		if((step == 12 && state == failure) || 
  			(step == 18  || step == 9 && state == success)) step += 1;
  		state = play;
  		result_time = 2;
  		amountRotated = 0;
  		

  		if(success_bool == true){
  			addCount = 50;
  			addMoney = true;
			addToMoney();
			success_bool = false;
		}
  	}
}

function resultTimer(){
	if(state == success || state == failure) {
		if(result_time <= 0){
			finishResult();
			//result_time = 2;
		} else {
			result_time--;
		}
	}		
}
setInterval(resultTimer, 1000);


function drawP(img,xloc,yloc){
	context.drawImage(img,xloc,yloc,pwidth,pheight);
}
function drawB(img,xloc,yloc,w,h){
	context.drawImage(img,xloc,yloc,w,h);
}
function drawI(img,xloc,yloc){
	context.drawImage(img,xloc,yloc,iwidth,iheight);
}



//////////////////////////////////////////////////////////////////



   
//**********************************************************************

//bridge class
/////////////////////////***********
function Bridge(name,load,picture,price,item) {
    var temp = {
    name:name,
    load:load,
    picture:picture,
    price:price,
    item:item,
    type:'bridge',
	}
     return temp; 
}
/////////////////////////***********

//**********************************************************************

//Pillar class
/////////////////////////***********
function Pillar(name,load,picture,price,item) {
	var temp = {
    name:name,
    load:load,
    picture:picture,
    price:price,
    item:item,
    type:'pillar',
	}
     return temp; 
}
/////////////////////////***********

//**********************************************************************

//LiveLoad class
/////////////////////////***********
function LiveLoad(name,number,weight,picture,reward,s) {
	var temp = {
    name:name,
    number:number,
    weight:weight,
    picture:picture,
    reward:reward,
    s:s,
    type:'liveLoad',
	}
     return temp; 
}
/////////////////////////***********

//returns the variables of the class input
function get(type) {
 	return type;
}

//**********************************************************************

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
	updateScreenSize();
    update();
    draw();
}

setInterval(game_loop, 30);
//---------------------------------------------------------
///////////////////////////////////////////////////////////