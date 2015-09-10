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

var cant_buy_img = document.getElementById('cant_buy_img')

//global images
var comp_game_background_img = document.getElementById('comp_game_background_img')
var comp_game_background_moving_img = document.getElementById('comp_game_background_moving_img')

var comp_menu_box_img = document.getElementById('comp_menu_box_img')

var build_background_img = document.getElementById('build_background_img')


//chassi images
var desktop_chassi_img = document.getElementById('desktop_chassi_img')
var laptop_chassi_img = document.getElementById('laptop_chassi_img')
var tablet_chassi_img = document.getElementById('tablet_chassi_img')
var phone_chassi_img = document.getElementById('phone_chassi_img')


//build images 
var desktop_channel_img = document.getElementById('desktop_channel_img')
var laptop_channel_img = document.getElementById('laptop_channel_img')
var tablet_channel_img = document.getElementById('tablet_channel_img')
var phone_channel_img = document.getElementById('phone_channel_img')



//menu images
var cpu_button_img = document.getElementById('cpu_button_img')
var output_button_img = document.getElementById('output_button_img')
var battery_button_img = document.getElementById('battery_button_img')
var memory_button_img = document.getElementById('memory_button_img')
var clock_button_img = document.getElementById('clock_button_img')
var input_button_img = document.getElementById('input_button_img')



var cpu_lv1_item_img = document.getElementById('cpu_lv1_item_img')
var cpu_lv1_img = document.getElementById('cpu_lv1_img')

var cpu_lv2_img = document.getElementById('cpu_lv2_img')
var cpu_lv2_item_img = document.getElementById('cpu_lv2_item_img')

var cpu_lv3_img = document.getElementById('cpu_lv3_img')
var cpu_lv3_item_img = document.getElementById('cpu_lv3_item_img')

var memory_lv1_item_img = document.getElementById('memory_lv1_item_img')
var memory_lv1_img = document.getElementById('memory_lv1_img')

var memory_lv2_item_img = document.getElementById('memory_lv2_item_img')
var memory_lv2_img = document.getElementById('memory_lv2_img')

var memory_lv3_item_img = document.getElementById('memory_lv3_item_img')
var memory_lv3_img = document.getElementById('memory_lv3_img')

var battery_lv1_item_img = document.getElementById('battery_lv1_item_img')
var battery_lv1_img = document.getElementById('battery_lv1_img')

var battery_lv2_item_img = document.getElementById('battery_lv2_item_img')
var battery_lv2_img = document.getElementById('battery_lv2_img')

var battery_lv3_item_img = document.getElementById('battery_lv3_item_img')
var battery_lv3_img = document.getElementById('battery_lv3_img')

var clock_lv1_item_img = document.getElementById('clock_lv1_item_img')
var clock_lv1_img = document.getElementById('clock_lv1_img')

var clock_lv2_item_img = document.getElementById('clock_lv2_item_img')
var clock_lv2_img = document.getElementById('clock_lv2_img')

var clock_lv3_item_img = document.getElementById('clock_lv3_item_img')
var clock_lv3_img = document.getElementById('clock_lv3_img')

var output_lv1_item_img = document.getElementById('output_lv1_item_img')
var output_lv1_img = document.getElementById('output_lv1_img')

var output_lv2_item_img = document.getElementById('output_lv2_item_img')
var output_lv2_img = document.getElementById('output_lv2_img')

var output_lv3_item_img = document.getElementById('output_lv3_item_img')
var output_lv3_img = document.getElementById('output_lv3_img')

var input_lv1_item_img = document.getElementById('input_lv1_item_img')
var input_lv1_img = document.getElementById('input_lv1_img')

var input_lv2_item_img = document.getElementById('input_lv2_item_img')
var input_lv2_img = document.getElementById('input_lv2_img')

var input_lv3_item_img = document.getElementById('input_lv3_item_img')
var input_lv3_img = document.getElementById('input_lv3_img')





var aesthetic_border_img = document.getElementById('aesthetic_border_img')
var aesthetic_back_img = document.getElementById('aesthetic_back_img')


var desktop_aesthetic_img = document.getElementById('desktop_aesthetic_img')

var desktop_screen_aesthetic_img = document.getElementById('desktop_screen_aesthetic_img')
var desktop_audio_aesthetic_img = document.getElementById('desktop_audio_aesthetic_img')
var desktop_wifi_aesthetic_img = document.getElementById('desktop_wifi_aesthetic_img')

var desktop_keyboard_aesthetic_img = document.getElementById('desktop_keyboard_aesthetic_img')
var desktop_mouse_aesthetic_img = document.getElementById('desktop_mouse_aesthetic_img')
var desktop_camera_aesthetic_img = document.getElementById('desktop_camera_aesthetic_img')



var phone_aesthetic_img = document.getElementById('phone_aesthetic_img')

var phone_screen_aesthetic_img = document.getElementById('phone_screen_aesthetic_img')
var phone_audio_aesthetic_img = document.getElementById('phone_audio_aesthetic_img')
var phone_wifi_aesthetic_img = document.getElementById('phone_wifi_aesthetic_img')

var phone_pen_aesthetic_img = document.getElementById('phone_pen_aesthetic_img')
var phone_camera_aesthetic_img = document.getElementById('phone_camera_aesthetic_img')
var phone_touchscreen_aesthetic_img = document.getElementById('phone_touchscreen_aesthetic_img')



var tablet_aesthetic_img = document.getElementById('tablet_aesthetic_img')

var tablet_screen_aesthetic_img = document.getElementById('tablet_screen_aesthetic_img')
var tablet_audio_aesthetic_img = document.getElementById('tablet_audio_aesthetic_img')
var tablet_wifi_aesthetic_img = document.getElementById('tablet_wifi_aesthetic_img')

var tablet_pen_aesthetic_img = document.getElementById('tablet_pen_aesthetic_img')
var tablet_camera_aesthetic_img = document.getElementById('tablet_camera_aesthetic_img')
var tablet_keyboard_aesthetic_img = document.getElementById('tablet_keyboard_aesthetic_img')
var tablet_mic_aesthetic_img = document.getElementById('tablet_mic_aesthetic_img') 



var laptop_aesthetic_img = document.getElementById('laptop_aesthetic_img')

var laptop_screen_aesthetic_img = document.getElementById('laptop_screen_aesthetic_img')
var laptop_audio_aesthetic_img = document.getElementById('laptop_audio_aesthetic_img')
var laptop_wifi_aesthetic_img = document.getElementById('laptop_wifi_aesthetic_img')

var laptop_camera_aesthetic_img = document.getElementById('laptop_camera_aesthetic_img')
var laptop_mic_aesthetic_img = document.getElementById('laptop_mic_aesthetic_img') 
var laptop_touch_aesthetic_img = document.getElementById('laptop_touch_aesthetic_img') 

var goto_sell_button_img = document.getElementById('goto_sell_button_img') 



//sale images 
var sale_border_img = document.getElementById('sale_border_img')
var sale_bar_img = document.getElementById('sale_bar_img')

//review images
var review_border_img = document.getElementById('review_border_img')

// stats images
var stat_border_img = document.getElementById('stat_border_img')

//---------------------------------------------------------------
//audio 

var menu_open_sound = document.getElementById("menu_open_sound"); 
var menu_close_sound = document.getElementById("menu_close_sound"); 
var money_add_sound = document.getElementById("money_add_sound"); 
var money_subtract_sound = document.getElementById("money_subtract_sound"); 
var place_sound = document.getElementById("place_sound"); 
var error_sound = document.getElementById("error_sound");
var button_sound = document.getElementById("button_sound");


var tutorial_sound = document.getElementById("tutorial_sound"); 
var play_sound = document.getElementById("play_sound"); 
var victory_sound = document.getElementById("victory_sound");
var success_sound = document.getElementById("success_sound");



//global variables////////////////////////

//mouse variables

//mouse unit:needed for picking up objects with proportional screen size

var mouse = {x: 1000, y: 1000*(1/resolution)};

var background_loc = 0;

var hovering = false
var over_button = false

var hovering_object = null;
var hovering_button = null;

var selected_object = null;
var selected_button = null;

var round = 1;

var mdown = true;
var pressed = false;
var clicked = false;

var chosen_chassi = null;
var active_objects = chassi_list;
var active_buttons = build_buttons;

var money = 5000;
var sale = 0;
var quality = 0;

var battery_power = 0;
var no_power = false;

var view_sale = 0;
var fans = 0;
var cost = 0;
var defecit = false;

var promptcount = 3;


var past_desktop_quality = 0;
var past_laptop_quality = 0;
var past_tablet_quality = 0;
var past_phone_quality = 0;

var past_desktop = [];
var past_laptop = [];
var past_tablet = [];
var past_phone = [];

var worse_product = false;
var same_product = false;
var repeat_product = false;
//-------------------------------------------------
//CHASSI_SELECT VARIABLES
//-------------------------------------------------
	//chassis
	var desktop = chassi('desktop',desktop_chassi_img);
	var laptop = chassi('laptop',laptop_chassi_img);
	var tablet = chassi('tablet',tablet_chassi_img);
	var smart_phone = chassi('smart_phone',phone_chassi_img);

	var chassi_list = [desktop,laptop,tablet,smart_phone];

//-------------------------------------------------

//TRANSITION_VARIABLS VARIABLES
//-------------------------------------------------
	var temp_channel = null;
	var temp_objects = null;
	var temp_buttons = null;
	var temp_parts = null;
	var temp_stats = null;
	var temp_border = null;
	var temp_aesthetic = null;

	var transx = 0;
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
	var circuit_board_desktop = comChannel('circuit_board_desktop',desktop_channel_img,650,450);
	var circuit_board_laptop = comChannel('circuit_board_laptop',laptop_channel_img,650,350);
	var circuit_board_tablet = comChannel('circuit_board_tablet',tablet_channel_img,500,350);
	var circuit_board_phone = comChannel('circuit_board_phone',phone_channel_img,200,350);

	var aesthetic_desktop = aesthetic('aesthetic_desktop',aesthetic_border_img,100,100);
	var aesthetic_laptop = aesthetic('aesthetic_laptop',aesthetic_border_img,100,100);
	var aesthetic_tablet = aesthetic('aesthetic_tablet',aesthetic_border_img,100,100);
	var aesthetic_phone = aesthetic('aesthetic_phone',aesthetic_border_img,100,100);

	var active_channel = null;
	var active_aesthetic = null;

	var over_channel = false;
	var over_aesthetic = false;
	var comp_parts = [];
	var part_number = 1;


	var sell_button = button('sell_button',goto_sell_button_img,900,0);
	var back_button = button('back_button',goto_sell_button_img,800,0);
	var build_buttons = [sell_button,back_button];

	var no_space_tick = 0;
	var replace_tick = 0;
//-------------------------------------------------


//-------------------------------------------------
//MENU_VARIABLES
//-------------------------------------------------
	//menu Items
	//cpu 
	//--------------------------------------------------
	var cpu_lv1_part = part('cpu_lv1_part',cpu_lv1_img,cpu_lv1_item_img,'cpu',1,'cpu message',2,50,50,500);
	var cpu_lv2_part = part('cpu_lv2_part',cpu_lv2_img,cpu_lv2_item_img,'cpu',2,'cpu message',5,100,100,1000);
	var cpu_lv3_part = part('cpu_lv3_part',cpu_lv3_img,cpu_lv3_item_img,'cpu',3,'cpu message',10,200,200,1500);


	var cpu_lv1 = menuItem('cpu_lv1',cpu_lv1_item_img,'cpu',cpu_lv1_part);
	var cpu_lv2 = menuItem('cpu_lv2',cpu_lv2_item_img,'cpu',cpu_lv2_part);
	var cpu_lv3 = menuItem('cpu_lv3',cpu_lv3_item_img,'cpu',cpu_lv3_part);
	var cpu_list = [cpu_lv1,cpu_lv2,cpu_lv3]
	//var cpu_m_number = 0;
	//var cpu = cpu_list[cpu_m_number];
	//--------------------------------------------------

	//battery 
	//--------------------------------------------------
	var battery_lv1_part = part('battery_lv1_part',battery_lv1_img,battery_lv1_item_img,'battery',1,'battery message',10,50,25,500);
	var battery_lv2_part = part('battery_lv2_part',battery_lv2_img,battery_lv2_item_img,'battery',2,'battery message',30,100,50,1000);
	var battery_lv3_part = part('battery_lv3_part',battery_lv3_img,battery_lv3_item_img,'battery',3,'battery message',50,150,75,1500);

	var battery_lv1 = menuItem('battery_lv1',battery_lv1_item_img,'battery',battery_lv1_part);
	var battery_lv2 = menuItem('battery_lv2',battery_lv2_item_img,'battery',battery_lv2_part);
	var battery_lv3 = menuItem('battery_lv3',battery_lv3_item_img,'battery',battery_lv3_part);
	var battery_list = [battery_lv1,battery_lv2,battery_lv3]
	//var output_m_number = 0;
	//var output = output_list[output_m_number];
	//--------------------------------------------------

	//memory 
	//--------------------------------------------------
	var memory_lv1_part = part('memory_lv1_part',memory_lv1_img,memory_lv1_item_img,'memory',1,'memory message',2,110,40,500);
	var memory_lv2_part = part('memory_lv2_part',memory_lv2_img,memory_lv2_item_img,'memory',2,'memory message',5,220,80,1000);
	var memory_lv3_part = part('memory_lv3_part',memory_lv3_img,memory_lv3_item_img,'memory',3,'memory message',10,330,100,1500);

	var memory_lv1 = menuItem('memory_lv1',memory_lv1_item_img,'memory',memory_lv1_part);
	var memory_lv2 = menuItem('memory_lv2',memory_lv2_item_img,'memory',memory_lv2_part);
	var memory_lv3 = menuItem('memory_lv3',memory_lv3_item_img,'memory',memory_lv3_part);
	var memory_list = [memory_lv1,memory_lv2,memory_lv3]
	//var output_m_number = 0;
	//var output = output_list[output_m_number];
	//--------------------------------------------------

	//clock
	//--------------------------------------------------
	var clock_lv1_part = part('clock_lv1_part',clock_lv1_img,clock_lv1_item_img,'clock',1,'memory message',2,80,40,500);
	var clock_lv2_part = part('clock_lv2_part',clock_lv2_img,clock_lv2_item_img,'clock',2,'memory message',5,100,50,1000);
	var clock_lv3_part = part('clock_lv3_part',clock_lv3_img,clock_lv3_item_img,'clock',3,'memory message',10,120,60,1500);

	var clock_lv1 = menuItem('clock_lv1',clock_lv1_item_img,'clock',clock_lv1_part);
	var clock_lv2 = menuItem('clock_lv2',clock_lv2_item_img,'clock',clock_lv2_part);
	var clock_lv3 = menuItem('clock_lv3',clock_lv3_item_img,'clock',clock_lv3_part);
	var clock_list = [clock_lv1,clock_lv2,clock_lv3]
	//var output_m_number = 0;
	//var output = output_list[output_m_number];
	//--------------------------------------------------

	//input 
	//--------------------------------------------------
	var input_lv1_part = part('input_lv1_part',input_lv1_img,input_lv1_item_img,'input',1,'input message',2,80,100,500);
	var input_lv2_part = part('input_lv2_part',input_lv2_img,input_lv2_item_img,'input',2,'input message',5,90,120,1000);
	var input_lv3_part = part('input_lv3_part',input_lv3_img,input_lv3_item_img,'input',3,'input message',10,100,140,1500);

	var input_lv1 = menuItem('input_lv1',input_lv1_item_img,'input',input_lv1_part);
	var input_lv2 = menuItem('input_lv2',input_lv2_item_img,'input',input_lv2_part);
	var input_lv3 = menuItem('input_lv3',input_lv3_item_img,'input',input_lv3_part);
	var input_list = [input_lv1,input_lv2,input_lv3]
	//var output_m_number = 0;

	//----------------------
	var desktop_keyboard_aesthetic = aesthetic('desktop_keyboard_aesthetic',desktop_keyboard_aesthetic_img,300,300,-70,250)
	var desktop_mouse_aesthetic = aesthetic('desktop_mouse_aesthetic',desktop_mouse_aesthetic_img,400,400,-270,160)
	var desktop_camera_aesthetic = aesthetic('desktop_camera_aesthetic',desktop_camera_aesthetic_img,400,400,-130,400)

	var laptop_touch_aesthetic = aesthetic('laptop_touch_aesthetic',laptop_touch_aesthetic_img,450,450,-130,220)
	var laptop_mic_aesthetic = aesthetic('laptop_mic_aesthetic',laptop_mic_aesthetic_img,1000,1000,-610,-280)
	var laptop_camera_aesthetic = aesthetic('laptop_camera_aesthetic',laptop_camera_aesthetic_img,2000,2000,-900,-80)

	var tablet_keyboard_aesthetic = aesthetic('tablet_keyboard_aesthetic',desktop_keyboard_aesthetic_img,300,300,-70,250)
	var tablet_mic_aesthetic = aesthetic('tablet_mic_aesthetic',laptop_mic_aesthetic_img,1000,1000,-610,-280)
	var tablet_camera_aesthetic = aesthetic('tablet_camera_aesthetic',laptop_camera_aesthetic_img,2000,2000,-900,-80)

	var phone_touchscreen_aesthetic = aesthetic('phone_touchscreen_aesthetic',laptop_touch_aesthetic_img,450,450,-130,220)
	var phone_pen_aesthetic = aesthetic('phone_pen_aesthetic',phone_pen_aesthetic_img,400,400,-170,340)
	var phone_camera_aesthetic = aesthetic('phone_camera_aesthetic',laptop_camera_aesthetic_img,2000,2000,-900,-80)

	var desktop_input_list = ['desktop',desktop_keyboard_aesthetic,desktop_mouse_aesthetic,desktop_camera_aesthetic]
	var laptop_input_list = ['laptop',laptop_touch_aesthetic,laptop_mic_aesthetic,laptop_camera_aesthetic]
	var tablet_intput_list = ['tablet',tablet_keyboard_aesthetic,tablet_mic_aesthetic,tablet_camera_aesthetic]
	var phone_input_list = ['smart_phone',phone_touchscreen_aesthetic,phone_pen_aesthetic,phone_camera_aesthetic]

	var input_aesthetic_list = [desktop_input_list,laptop_input_list,tablet_intput_list,phone_input_list]
	//--------------------------------------------------

	//output 
	//--------------------------------------------------
	var output_lv1_part = part('output_lv1_part',output_lv1_img,output_lv1_item_img,'output',1,'output message',2,50,100,500);
	var output_lv2_part = part('output_lv2_part',output_lv2_img,output_lv2_item_img,'output',2,'output message',5,60,120,1000);
	var output_lv3_part = part('output_lv3_part',output_lv3_img,output_lv3_item_img,'output',3,'output message',10,70,140,1500);

	var output_lv1 = menuItem('output_lv1',output_lv1_item_img,'output',output_lv1_part);
	var output_lv2 = menuItem('output_lv2',output_lv2_item_img,'output',output_lv2_part);
	var output_lv3 = menuItem('output_lv3',output_lv3_item_img,'output',output_lv3_part);
	var output_list = [output_lv1,output_lv2,output_lv3]
	//var output_m_number = 0;

	//----------------------
	var desktop_screen_aesthetic = aesthetic('desktop_screen_aesthetic',desktop_screen_aesthetic_img,200,200,-10,400)
	var desktop_audio_aesthetic = aesthetic('desktop_audio_aesthetic',desktop_audio_aesthetic_img,400,400,-280,260)
	var desktop_wifi_aesthetic = aesthetic('desktop_wifi_aesthetic',desktop_wifi_aesthetic_img,500,500,-40,430)

	var laptop_screen_aesthetic = aesthetic('laptop_screen_aesthetic',laptop_screen_aesthetic_img,200,200,0,420)
	var laptop_audio_aesthetic = aesthetic('laptop_audio_aesthetic',laptop_audio_aesthetic_img,1000,1000,-670,-200)
	var laptop_wifi_aesthetic = aesthetic('laptop_wifi_aesthetic',laptop_wifi_aesthetic_img,1000,1000,-400,30)

	var tablet_screen_aesthetic = aesthetic('tablet_screen_aesthetic',tablet_screen_aesthetic_img,200,200,0,440)
	var tablet_audio_aesthetic = aesthetic('tablet_audio_aesthetic',laptop_audio_aesthetic_img,1000,1000,-670,-200)
	var tablet_wifi_aesthetic = aesthetic('tablet_wifi_aesthetic',laptop_wifi_aesthetic_img,1000,1000,-400,30)

	var phone_screen_aesthetic = aesthetic('phone_screen_aesthetic',phone_screen_aesthetic_img,200,200,0,420)
	var phone_audio_aesthetic = aesthetic('phone_audio_aesthetic',laptop_audio_aesthetic_img,1000,1000,-670,-200)
	var phone_wifi_aesthetic = aesthetic('phone_wifi_aesthetic',laptop_wifi_aesthetic_img,1000,1000,-400,30)

	var desktop_output_list = ['desktop',desktop_screen_aesthetic,desktop_audio_aesthetic,desktop_wifi_aesthetic]
	var laptop_output_list = ['laptop',laptop_screen_aesthetic,laptop_audio_aesthetic,laptop_wifi_aesthetic]
	var tablet_output_list = ['tablet',tablet_screen_aesthetic,tablet_audio_aesthetic,tablet_wifi_aesthetic]
	var phone_output_list = ['smart_phone',phone_screen_aesthetic,phone_audio_aesthetic,phone_wifi_aesthetic]

	var output_aesthetic_list = [desktop_output_list,laptop_output_list,tablet_output_list,phone_output_list]
	//--------------------------------------------------



	var menu_list = [cpu_list,battery_list,memory_list,clock_list,input_list,output_list];
	var page_index = 0;

	var item_pos = {x:50, y:200};
	var IspaceingSize = 220;
	var cant_buy = false;

	var cpu_button = button('cpu_button',cpu_button_img,50,100,100,40);
	var battery_button = button('battery_button',battery_button_img,150,100,100,40);
	var memory_button = button('memory_button',memory_button_img,250,100,100,40);
	var clock_button = button('clock_button',clock_button_img,350,100,100,40);
	var input_button = button('input_button',input_button_img,450,100,100,40);
	var output_button = button('output_button',output_button_img,550,100,100,40);

	var menu_buttons = [cpu_button,battery_button,memory_button,clock_button,input_button,output_button];
	
//-------------------------------------------------

//-------------------------------------------------
//SELL_VARIABLES
//-------------------------------------------------
	var sell_bar_border = sellItem('sell_bar_border',sale_border_img,400,10,200,573);
	var sell_bar = sellItem('sell_bar',sale_bar_img,434,554 - 30,132,30);

	var sell_items = [sell_bar_border,sell_bar];

	var sale_height = 0;
	var profit = 0;

	var sale_limit =500;
	var sell_response = null;
	var review_tick = 3;
	var to_review_button = button('to_review_button',platinum_bridge_item_img,900,0);
	var sell_buttons = [to_review_button];

//-------------------------------------------------
//-------------------------------------------------
//REVIEWS_VARIABLES
//-------------------------------------------------
	var reveiw_1 = sellItem('reveiw_1',review_border_img,200,100,600,300);
	var reveiw_2 = sellItem('reveiw_2',platinum_bridge_item_img,200,100,600,300);

	//var sell_bar = sellItem('sellItem',gold_bridge_item_img,400,520,200,30);

	var reviews_list = [reveiw_1,reveiw_2];
	var review_index = 0;
	var stat_tick = 15;

	var to_stat_button = button('to_stat_button',platinum_bridge_item_img,900,0);
	var reviews_buttons = [to_stat_button];

	var full_comp = {
		has_cpu: false,
		has_bat: false,
		has_mem: false,
		has_clock: false,
		has_out: false,
		has_in: false,
	}
	var missing_parts = 0;
	var review_feed = [];
	var new_fans = 0;

	
//-------------------------------------------------

//STATS_VARIABLES
//-------------------------------------------------
	var stats_border = sellItem('stats_border',stat_border_img,50,50,800,500);
	var stats_bar = sellItem('stats_bar',sale_bar_img,0,0,100,100);
//	var stats_test = sellItem('stats_bar',sale_bar_img,100,0,100,100);

	var stats_list = [];
	//	var review_index = 0;
	//	var stat_tick = 15;

	var to_chassi_button = button('to_chassi_button',platinum_bridge_item_img,900,0);
	var stats_buttons = [to_chassi_button];
	var stat_slide_condition = false;

	var chassi_tick = 15;

	
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
var reviews = 8;
var transition = 9;
var stats = 10;
/////////////////////////////////////////////

//static variables

//-------------------------------------------------
//CORE FUNCTION////////////////////////////////////
//-------------------------------------------------
function update(){
	music();
	updateScreenSize();
	updateActiveObjects();
	updateHovering();
	update_press();
	updateActiveButtons();
	overButton();
	pressButton();
	//console.log('money: ' + money);
	//console.log('chosen_chassi: ' + chosen_chassi);
	//console.log('fans: ' + fans);
	//console.log('pressed: ' + pressed);
	//console.log('cost: ' + cost);
	//console.log('profit: ' + profit);
	console.log('worse_product: ' + worse_product);
	//console.log('quality: ' + quality);
	//console.log('past_desktop_quality: ' + past_desktop_quality);
	//console.log('past_laptop_quality: ' + past_laptop_quality);
	//console.log('past_tablet_quality: ' + past_tablet_quality);
	//console.log('past_phone_quality: ' + past_phone_quality);
	console.log('past_phone: ' + past_phone);
	//console.log('clicked: ' + clicked);
	//console.log('cpu_m_number: ' + cpu_m_number);
	//console.log('cpu.name: ' + cpu.name);
	//console.log('menu_list: ' + menu_list);
//	console.log('sale: ' + sale);
//	console.log('sale_limit: ' + sale_limit);
//	console.log('sale_height: ' + sale_height);
	//console.log('quality: ' + quality)
	//console.log('no_power: ' + no_power)
	/*
	for(var i = 0;  i < comp_parts.length; i++){
		if(comp_parts[i])console.log('comp_parts[i].quality: ' +comp_parts[i].quality)
	}
	*/
	
	//console.log('menu_list[0].name: ' + menu_list[0].name);
//	console.log('menu_list[0].item_type: ' + menu_list[0].item_type);
//	console.log('menu_list[0].picture: ' + menu_list[0].picture);
//	console.log('menu_list[0].part.name: ' + menu_list[0].part.name);
	//console.log('mouse.x: ' + mouse.x);
	//console.log('mdown: ' + mdown);
	//console.log('mouse.y: ' + mouse.y);
	//console.log('resolution: ' + resolution);
	//console.log('hovering: ' + hovering);
	//console.log('past_laptop.length: ' + past_laptop.length);
	//console.log('comp_parts.length: ' + comp_parts.length);
//	if(active_aesthetic)console.log('active_aesthetic.x: ' + active_aesthetic.x);
//	console.log('hovering_button: ' + hovering_button);
	//if(hovering_object)console.log('hoveringObject.item_type: ' + hovering_object.item_type);
	//if(hovering_object)console.log('hoveringObject.name: ' + hovering_object.name);
	//if(hovering_object)console.log('hoveringObject.type: ' + hovering_object.type);
	//if(selected_object) console.log('selected_object.name: ' + selected_object.name);
	//if(selected_object) console.log('selected_object.type: ' + selected_object.type);
	//if(selected_object) console.log('selected_object.quality: ' + selected_object.quality);
	//if(selected_object) console.log('selected_object.level: ' + selected_object.level);
	//	if(selected_object) console.log('selected_object.item_type: ' + selected_object.item_type);

	//if(menu_list) console.log('menu_list[0]: ' + menu_list[0]);
	//console.log('chosen_chassi: ' + chosen_chassi);
//	console.log('over_button: ' + over_button);
//	if(comp_parts) console.log('comp_parts: ' + comp_parts);
//	console.log('review_tick: ' + review_tick);
	//console.log('active_channel: ' + active_channel);
	//console.log('active_buttons: ' + active_buttons);
	//if(active_channel) console.log('active_channel.name: ' + active_channel.name);
	//console.log('sell_response: ' + sell_response);
	//console.log('stats_list: ' + stats_list);
	/*
	for(var i = 0;  i < stats_list.length; i++){
		console.log('stats_list[i].name: ' + stats_list[i].name);
	}
	
	for(var i = 0;  i < stats_list.length; i++){
		console.log('stats_list[i].height: ' + stats_list[i].height);
	}
	for(var i = 0;  i < stats_list.length; i++){
		console.log('stats_list[i].width: ' + stats_list[i].width);
	}
	for(var i = 0;  i < stats_list.length; i++){
		console.log('stats_list[i].y: ' + stats_list[i].y);
	}
			console.log('sale_height: ' + sale_height);
	stats_list.length
	for(var i = 0;  i < stats_list.length; i++){
		console.log('stats_list[i].picture: ' + stats_list[i].picture);
	}
	*/
	//console.log('stats_list.length: ' + stats_list.length);
	
	//console.log('slide_direction	: ' + slide_direction);

	//console.log('fakeMenu: ' + fakeMenu);
	//console.log('menuBox: ' + menuBox);
	//console.log('active_objects: ' + active_objects);
	//console.log('past_state: ' + past_state);
	//console.log('temp_stats: ' + temp_stats);
	//console.log('temp_buttons: ' + temp_buttons);
	//console.log('active_buttons: ' + active_buttons);
	//console.log('selected_button: ' + selected_button);
	//if(selected_button)console.log('selected_button.name: ' + selected_button.name);

	//console.log('temp_objects: ' + temp_objects);
	//console.log('temp_channel: ' + temp_channel);
	//console.log('temp_buttons: ' + temp_buttons);
	//console.log('temp_channel: ' + temp_channel);	
	//console.log('cost: ' + cost);	


	console.log('***********************************');	
	console.log('quality: ' + quality);	
	if(comp_parts) {
		for(var i = 0; i < comp_parts.length; i++){
			console.log('comp_parts.quality: ' + comp_parts[i].quality);
		}
	}
	console.log('***********************************');	


	//console.log('stat_slide_condition: ' + stat_slide_condition);
//	console.log('chassi_tick: ' + chassi_tick);






	//	console.log('left: ' + active_objects[0].getLeft());
	//	console.log('right: ' + active_objects[0].getRight());
	//	console.log('top: ' + active_objects[0].getTop());
	//	console.log('bottom: ' + active_objects[0].getBottom());

	
	//console.log('chassi_list2: ' + chassi_list2[1].picture);
	//console.log('desktop: ' + desktop.width);
	if(state == chassi_select){
		chooseChassi();

	}
	if(state == build){
		updateChannel();
		updateAesthetic();
		buildSlideCheck();
		OverChannel();
		OverAesthetic();
		lookAtAesthetic();
		placement();
		arrangeParts();
		sellButton();
		backButton();
	}
	if(state == transition){	
	}
	if(state == slide){
	}
	if(state == menu){
		menuSlideCheck();
		//upgradeModel();
	//	updateParts();
		updateMenuList();
		selectObject();
		MenuButtons();
		sellPart();
	}
	if(state == sell){
		convertToVeiwSale();
		updateSaleBar();
		goToreview();
	}
	if(state == reviews){
		//updateSaleBar(); 
		goToStats();
	}
	if(state == stats){
		//updateSaleBar(); 
		goToChassi();
	}

	update_click();

}
//------------------------------------------------------
//music functions
//Ecommerce Full 2 Music
//Control Panel 60s Music
//AM DJ 31 Music
function music(){
	if(state == chassi_select){
	//	tutorial_sound.play();
	}
	if(state == menu || state == build ){
		tutorial_sound.pause();
		play_sound.play();
	}
	if(state == sell || state == stats){
		play_sound.pause();
		victory_sound.play();
	}
}
//------------------------------------------------------
//global update functions
function updateActiveObjects(){
	if(state == chassi_select){
		active_objects = chassi_list;
	}
	if(state == menu){
		active_objects = menu_list[page_index];
	}
	if(state == build){
		active_objects = comp_parts;
	}
	if(state == sell){
		active_channel = null;
	}
	if(state == stats){
		active_objects = stats_list;
	}
}

function updateActiveButtons(){
	if(state == chassi_select){
		active_buttons = null;
	}
	if(state == menu){
		active_buttons = menu_buttons;
	}
	if(state == slide){
		active_buttons = null;
	} 
	if(state == build){
		active_buttons = build_buttons;
	}
	if(state == transition){
		active_buttons = null;
	}
	if(state == sell){
		active_buttons = sell_buttons;
	}
	if(state == reviews){
		active_buttons = reviews_buttons;
	}
	if(state == stats){
		active_buttons = stats_buttons;
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

function overButton(){
	if(active_buttons){
		for(i = 0; i < active_buttons.length; i++){
			if((active_buttons[i].getLeft() < mouse.x && mouse.x < active_buttons[i].getRight()) &&
				(active_buttons[i].getTop() < mouse.y && mouse.y < active_buttons[i].getBottom())){
				over_button = true;
				hovering_button = active_buttons[i];
				//getHoveringObject(active_objects[i]);
				return;
			}
		}
	}
	over_button = false;
	hovering_button = null;
}


function update_press(){
	if(hovering != true || mdown != true){
		pressed = false;
	}
}
function update_click(){
	if(clicked == true){
		clicked = false;
	}
}

function pressButton(){
	if(over_button == true && clicked == true){
		selected_button = hovering_button;
	}
}

/*
function getHoveringObject(object){
	if(hovering = true){
		hovering_object = object;
}
*/


//------------------------------------------------------
//chassi_select functions

function chooseChassi(){
	if(pressed == true){
		updateTempItems();
		chosen_chassi = hovering_object;
		past_state = chassi_select;
		menu_open_sound.play();
		state = transition;
	}
}
//------------------------------------------------------

//------------------------------------------------------
//transition functions

function slideSetup(){
	slide_direction = 'right';
	resetSlide(false,145,0,100,'right')
}

function updateTempItems(){
	temp_buttons = active_buttons;
	temp_channel = null;
	if(past_state == build) {
		if(chosen_chassi){
			temp_objects = active_objects;
			temp_parts = comp_parts;
			temp_aesthetic = active_aesthetic;
			temp_channel = active_channel;
		}else {
			temp_objects = [];
			temp_parts = [];
		}

	} else {
		temp_parts = null;
		temp_objects = null;
		temp_aesthetic = null;
	}
	if(state == stats){
		temp_border = stats_border;
		temp_stats = stats_list;
	} else {
		temp_border = null;
		temp_stats = null;
	}	
}
	
//------------------------------------------------------

//------------------------------------------------------
//slide functions
//------------------------------------------------------

//------------------------------------------------------
//build_functions

function updateChannel(){
	if(chosen_chassi.name == 'desktop'){
		active_channel = circuit_board_desktop;
	} 
	if(chosen_chassi.name == 'laptop'){
		active_channel = circuit_board_laptop;
	} 
	if(chosen_chassi.name == 'tablet'){
		active_channel = circuit_board_tablet;
	} 
	if(chosen_chassi.name == 'smart_phone'){
		active_channel = circuit_board_phone;
	} 
	
}

function updateAesthetic(){
	if(chosen_chassi.name == 'desktop'){
		active_aesthetic = aesthetic_desktop;
	} 
	if(chosen_chassi.name == 'laptop'){
		active_aesthetic = aesthetic_laptop;
	} 
	if(chosen_chassi.name == 'tablet'){
		active_aesthetic = aesthetic_tablet;
	} 
	if(chosen_chassi.name == 'smart_phone'){
		active_aesthetic = aesthetic_phone;
	} 
	
}

function buildSlideCheck(){
	if(mouse.x < 100){
		updateTempItems();
		menu_open_sound.play();
		state = slide;
	}
}

function OverChannel(){
	//for(i = 0; i < active_channel.length; i++){
		if((active_channel.getLeft() < mouse.x && mouse.x < active_channel.getRight()) &&
			(active_channel.getTop() < mouse.y && mouse.y < active_channel.getBottom())){
			over_channel = true;
			return;
		}
	//}
	over_channel =false;
}

function placement(){
	if(over_channel == true && clicked == true && selected_object){
		//console.log('place')
		if(selected_object.type == 'item'){
			var new_part = Object.create(selected_object.part);
		} else if(selected_object.type == 'part'){
			var new_part = Object.create(selected_object);
		}
		
		//adjustSize(new_part);
		new_part.x = mouse.x - new_part.width/2;
		new_part.y = mouse.y - new_part.height/2;

	//	new_part.part_num = part_number;
		//part_number++;
		for(var i = 0; i < comp_parts.length; i++){
			if(collideWith(new_part,comp_parts[i]) == true){
				no_space_tick = 2;
				return;
			}
		}
		if(checkIfPLaced() == true) {
			replace_tick = 2;
			return;
		}

		if(offChannel(new_part) == false){
			console.log('placement')
			place_sound.play();
			comp_parts.push(new_part);
			selected_object = null;	 
		}
	}
}
/*
function adjustSize(new_part){
	//	console.log(new_part.name);
	if(new_part.item_type == 'cpu'){
		new_part.width = 100;
		new_part.height = 100;
	}else if(new_part.item_type == 'output'){
		new_part.width = 100;
		new_part.height = 200;
	}
	
}
	
*/

function collideWith(obj_1,obj_2){
	if(obj_1.getLeft() <= obj_2.getRight() && obj_1.getLeft() >= obj_2.getLeft()){
		if(obj_1.getBottom() >= obj_2.getTop() && obj_1.getTop() <= obj_2.getBottom()){
			return true;
		}
	}else if(obj_2.getLeft() <= obj_1.getRight() && obj_2.getLeft() >= obj_1.getLeft()){
		if(obj_2.getBottom() >= obj_1.getTop() && obj_2.getTop() <= obj_1.getBottom()){
			return true;
		}
	}else{
		console.log('return false'); 
		return false;
	}
}

function offChannel(obj){
	console.log('offChannel')
	if(obj.getLeft() < active_channel.getLeft() || obj.getTop() < active_channel.getTop() ||
		obj.getRight() > active_channel.getRight() || obj.getBottom() > active_channel.getBottom()){
		return true;
	}else return false;

}

function arrangeParts(){
	if(clicked == true && hovering_object && selected_object == undefined){
		selected_object = hovering_object;
		for(var i = 0; i < active_objects.length; i++){
			if(hovering_object == active_objects[i]){
				active_objects.splice(i, 1);
				place_sound.play();
			}
		}
	}
}

function sellButton(){
	if(selected_button == sell_button){
		slideSetup();
		updateTempItems();
		updateQuality();
		calculation();
		calcMnF();
		chooseReviews();
		updateSaleBar();
		selected_button = null;
		state = transition;
		
	}
}

function backButton(){
	if(selected_button == back_button){
		slideSetup();
		comp_parts = [];
		selected_button = null;
		chosen_chassi = null;
		money+= cost;
		cost = 0;
		state = transition;
		updateTempItems();
	}
}

function checkIfPLaced(){
	if(selected_object.item_type == 'cpu' || selected_object.item_type == 'clock' || 
		selected_object.item_type == 'battery'){

		for(var i = 0; i < comp_parts.length; i++){
			if(comp_parts[i].item_type == selected_object.item_type){
				return true;
			}
		}
	} else if(selected_object.item_type == 'input' || selected_object.item_type == 'output'){
		for(var i = 0; i < comp_parts.length; i++){
			if(selected_object.type == 'item'){
				if(comp_parts[i].name == selected_object.part.name){
					return true;
				}
			}else if (selected_object.type == 'part'){
				if(comp_parts[i].name == selected_object.name){
					return true;
				}
			}
		}
	}
	return false;
}

function OverAesthetic(){
	//for(i = 0; i < active_channel.length; i++){
		if((active_aesthetic.getLeft() < mouse.x && mouse.x < active_aesthetic.getRight()) &&
			(active_aesthetic.getTop() < mouse.y && mouse.y < active_aesthetic.getBottom())){
			over_aesthetic = true;
			return;
		}
	//}
	over_aesthetic =false;
}

function lookAtAesthetic(){
	if(over_aesthetic){
		active_aesthetic.x = 100;
		active_aesthetic.y = 0;
		active_aesthetic.width = 500;
		active_aesthetic.height = 500;
	} else {
		active_aesthetic.x = 100;
		active_aesthetic.y = 0;
		active_aesthetic.width = 100;
		active_aesthetic.height = 100;
	}
}

//------------------------------------------------------
//------------------------------------------------------
//menu_functions

function updateMenuList(){
	menu_list = [cpu_list,battery_list,memory_list,clock_list,input_list,output_list];
}

function menuSlideCheck(){
	if(mouse.x > 800){
		menu_close_sound.play();
		state = slide;
	}
}
/*
function updateParts(){
	cpu = cpu_list[cpu_m_number];
	output = output_list[output_m_number];
}
*/
/*
function upgradeModel(){
	if(clicked == true && hovering_object.item_type == 'cpu'){
		if(cpu_m_number < 2){
			cpu_m_number++;
		}else {
			cpu_m_number = 0;
		}
	}
	if(clicked == true && hovering_object.item_type == 'output'){
		if(output_m_number < 2){
			output_m_number++;
		}else {
			output_m_number = 0;
		}
	}
}
*/
function selectObject(){
	if(clicked == true && hovering_object && selected_object == null){
		if(canbuy() == true){
			selected_object = hovering_object;
			addCost();
		}else cant_buy = true;
	} else {
		if(clicked == true && hovering_object && selected_object){
			subCost();
			if(canbuy() == true){
				selected_object = hovering_object;
				addCost();
			}else {
				addCost();
				cant_buy = true;
			}
		}
	}
}

function MenuButtons(){
	if(selected_button == cpu_button){
		page_index = 0;
	}
	if(selected_button == battery_button){
		page_index = 1;
	}
	if(selected_button == memory_button){
		page_index = 2;
	}
	if(selected_button == clock_button){
		page_index = 3;
	}
	if(selected_button == input_button){
		page_index = 4;
	}
	if(selected_button == output_button){
		page_index = 5;
	}

	selected_button = null;

}

function addCost(){
	if(selected_object.type == 'item'){
		cost += selected_object.part.cost;
		money -= selected_object.part.cost; 
	} else if(selected_object.type == 'part'){
		cost += selected_object.cost;
		money -= selected_object.cost; 
	}
	money_add_sound.play();
 
}

function subCost(){
	if(selected_object.type == 'item'){
		cost -= selected_object.part.cost;
		money += selected_object.part.cost ; 
	} else if(selected_object.type == 'part'){
		cost -= selected_object.cost;
		money += selected_object.cost; 
	}
	money_subtract_sound.play();
}

function sellPart(){
	if(mouse.x < 800 && mdown == true && selected_object && hovering == false){
		console.log('sell_part------------')
		subCost();
		selected_object = null;
	}
}

function canbuy(){
	if(hovering_object){
		if(money >= hovering_object.part.cost){
			return true;
		}else{
			return false;
		}
	}
}

function updateCantBuy(){
	//	context.font = "small-caps bold 25px Trebuchet MS";
  //  context.fillStyle = 'red';
	if(cant_buy == true && promptcount > 0) {
		promptcount -= 1;
	//	picItemB = null;
  	//	picItem = null;
  	//	holding = false;
		//context.fillText('sorry, not enough money', canvas.width/2 -70, 50);

	//	if (errorSound) error_sound.play();
	//	errorSound = false;
	} else {
	//	errorSound = true;
		cant_buy = false;
		promptcount = 3;
	}
}setInterval(updateCantBuy, 1000);
//------------------------------------------------------

//------------------------------------------------------
//sell_functions
function updateSales(){
	if(state == sell){
		if(sale_height < sale_limit){
			//console.log('increase height')
			sale_height+= 2;
		} else {
			sellResponse();
		}
	}
}setInterval(updateSales,10);

function sellResponse(){
	if(sale_height >= 450){
		sell_response = 'AMAZING!!!'
	}else if(sale_height >= 400){
		sell_response = 'GREAT JOB!'
	}else if(sale_height >=250){
		sell_response = 'GOOD SALE'
	}else if(sale_height >= 100){
		sell_response = 'NOT BAD'
	}else if(sale_height >= 0){
		sell_response = 'NOT SO GOOD'
	}
}

function updateSaleBar(){
	sell_bar.y = 554 - sale_height;
	sell_bar.height = sale_height;
}

function tickToreview(){
	if(sell_response && state == sell){ 
		if(review_tick > 0){
			review_tick--;
		}else {
			review_tick = 3;
			updateTempItems();
			sale_height = sale_limit;
			convertToVeiwSale();
			state = transition;
		}
	}
}setInterval(tickToreview, 1000);


function goToreview(){
	if(selected_button == to_review_button){
		if(sell_response) {
			//console.log('working');
			review_tick = 3;
			updateTempItems();
			state = transition;
		}else {
			sale_height = sale_limit;
			selected_button = null;

		}
	} 
}

function convertToVeiwSale(){
	view_sale = sale_height*20;
}

function updateQuality(){
	if(completeCheck() == true){
		for(var i = 0; i < comp_parts.length; i++){
		//	console.log(comp_parts[i].quality)
			if(comp_parts[i].item_type != 'battery'){
				sale += Math.round(comp_parts[i].quality *200);
				quality += comp_parts[i].quality;
			} else {
				battery_power = comp_parts[i].quality;
			}
		}
	}
}

function calculation(){
	if(completeCheck() == true){
		pastQuality();
		repeatProduct();
		marketBallence();
		if(battery_power < quality){
			sale = sale/2;
			no_power = true;
		}
		//calcProfit();
		fanBonus();
		calcSale();
	}else {
		sale = 0;
	}
	if(sale < 10000){
		sale_limit = sale/20;
	}else {
		sale = 10000;
		sale_limit = 500;
	}
}

function calcSale(){
	if(repeat_product == false){
		if(worse_product == false){
			sale = Math.round(sale);
		} else  if(worse_product == true){
			sale = Math.round(sale/4);
		}else if(worse_product == 'same'){
			sale = Math.round(sale);	
		}
	} else if(repeat_product == true){
		sale = Math.round(sale/4);
	}
}

function calcMnF(){
	money += Math.round(sale);
	if(repeat_product == false){
		if(worse_product == false){
			new_fans = Math.round(sale/4);
			fans += new_fans;
		} else  if(worse_product == true){
			new_fans = Math.round(-sale/2);
			fans += new_fans;
		}else if(worse_product == 'same'){
			new_fans = Math.round(sale/10);;
			fans += new_fans;
		}
	} else if(repeat_product == true){
		same_product = true;
		new_fans = Math.round(-sale/10);
		fans += new_fans;
	}
}

function fanBonus(){
	if(fans <= 2500){
		sale += fans/10;
	} else {
		sale += 2500;
	}
}

function marketBallence(){
	if(chosen_chassi.name == 'desktop'){
		sale = sale;
	}else if(chosen_chassi.name == 'laptop'){
		sale = sale*(5/4)
	}else if(chosen_chassi.name == 'tablet'){
		sale = sale*(3/2)
	}else if(chosen_chassi.name == 'smart_phone'){
		sale = sale*2
	}
}

function completeCheck(){
	if(comp_parts.length > 0 && missing_parts < 3 && same_product == false){
		return true;
	} else{
		return false;
	}
}

function repeatProduct(){
	var match_count = 0;
	if(chosen_chassi.name == 'desktop'){
		if(comp_parts.length == past_desktop.length){
			for(var i = 0; i < comp_parts.length; i++){
				for(var p = 0; p < past_desktop.length; p++){
					if(comp_parts[i].name == past_desktop[p].name){
						match_count++;
					}
				}
			}
		}else if(worse_product == false){
			past_desktop = comp_parts;
		}
	}else if(chosen_chassi.name == 'laptop'){
		if(comp_parts.length == past_laptop.length){
			for(var i = 0; i < comp_parts.length; i++){
				for(var p = 0; p < past_laptop.length; p++){
					if(comp_parts[i].name == past_laptop[p].name){
						match_count++;
					}
				}
			}
		}else if(worse_product == false){
			past_laptop = comp_parts;
		}
	}else if(chosen_chassi.name == 'tablet'){
		if(comp_parts.length == past_laptop.length){
			for(var i = 0; i < comp_parts.length; i++){
				for(var p = 0; p < past_tablet.length; p++){
					if(comp_parts[i].name == past_tablet[p].name){
						match_count++;
					}
				}
			}
		}else if(worse_product == false){
			past_tablet = comp_parts;
		}
	}else if(chosen_chassi.name == 'smart_phone'){
		if(comp_parts.length == past_phone.length){
			for(var i = 0; i < comp_parts.length; i++){
				for(var p = 0; p < past_phone.length; p++){
					if(comp_parts[i].name == past_phone[p].name){
						match_count++;
					}
				}
			}
		}else if(worse_product == false){
			past_phone = comp_parts;
		}
	}
		console.log('match_count' + match_count);
		if(match_count == comp_parts.length){
			console.log('its the same++++++++++++++++++')
			repeat_product = true;
			return true;
		}
	console.log('its not the same++++++++++++++++++')
	repeat_product = false;
	return false	
} 
/*
function calcProfit(){
	profit = sale - cost;
	calcDeficit();
}


function calcDeficit(){
	if (profit >= 0)
		defecit = false;
	else if (profit < 0){
		defecit = true;
	}
}
*/

function pastQuality(){
	if(chosen_chassi.name == 'desktop'){
		if(quality > past_desktop_quality ){
			past_desktop_quality = quality;
		} else if(quality == past_desktop_quality){
			worse_product = 'same';
		} else {
			worse_product = true;
		}
	} else if(chosen_chassi.name == 'laptop'){
		if(quality > past_laptop_quality ){
			past_laptop_quality = quality;
		} else if(quality == past_laptop_quality){
			worse_product = 'same';
		} else {
			worse_product = true;
		}
	} else if(chosen_chassi.name == 'tablet'){
		if(quality > past_tablet_quality ){
			past_tablet_quality = quality;
		} else if(quality == past_tablet_quality){
			worse_product = 'same';
		} else {
			worse_product = true;
		}
	} else if(chosen_chassi.name == 'smart_phone'){
		if(quality > past_phone_quality ){
			past_phone_quality = quality;
		} else if(quality == past_phone_quality){
			worse_product = 'same';
		} else {
			worse_product = true;
		}
	}
}
//------------------------------------------------------

//------------------------------------------------------
//reviews_functions
function tickToStats(){
	if(state == reviews){ 
		if(stat_tick > 0){
			stat_tick--;
		}else {
			stat_tick = 15;
			updateTempItems();
			addStat();
			stat_slide_condition = true;
			state = transition;
		}
	}
}setInterval(tickToStats, 1000);

function goToStats(){
	if(selected_button == to_stat_button){
		stat_tick = 15;
		updateTempItems();
		addStat();
		stat_slide_condition = true;
		state = transition;
	}
}

function updateReviewIndex(){
	if(review_index < reviews.length){
		review_index++;
	}else{
		review_index = 0;
	}
}

function chooseReviews(){
	checkIfFullComp();
	checkLevels();
	addPosReviews();
	updateFeed();
}

function checkIfFullComp(){
	for(var i = 0; i < comp_parts.length; i++){
		if(comp_parts[i].item_type == 'cpu'){
			full_comp.has_cpu = true;
		} if(comp_parts[i].item_type == 'battery'){
			full_comp.has_bat = true;
		} if(comp_parts[i].item_type == 'memory'){
			full_comp.has_mem = true;
		} if(comp_parts[i].item_type == 'clock'){
			full_comp.has_clock = true;
		} if(comp_parts[i].item_type == 'output'){
			full_comp.has_out = true;
		} if(comp_parts[i].item_type == 'input'){
			full_comp.has_in = true;
		}
	}

	if(full_comp.has_cpu == false){
		review_feed.push('cpu does not exist');
		missing_parts++;
	}
	if(full_comp.has_bat == false){
		review_feed.push('bat does not exist');
		missing_parts++;
	}
	if(full_comp.has_mem == false){
		review_feed.push('mem does not exist');
		missing_parts++;
	}
	if(full_comp.has_clock == false){
		review_feed.push('clock does not exist');
		missing_parts++;
	}
	if(full_comp.has_out == false){
		review_feed.push('out does not exist');
		missing_parts++;
	}
	if(full_comp.has_in == false){
		review_feed.push('in does not exist');
		missing_parts++;
	}

}


function checkLevels(){
	if(quality > 25){
		for(var i = 0; i < comp_parts.length; i++){
			if(comp_parts[i].level <= 1){
				review_feed.push('error message for' + comp_parts[i].name);
				comp_parts[i].quality = -comp_parts[i].quality;
				quality = 0;
				updateQuality();
			} 
		}
	}
}

function addPosReviews(){
	var times_through = 0;
	while(review_feed.length < 3 && times_through == 0 ){
		var highest_level = 1;

		for(var i = 0; i < comp_parts.length; i++){
			if(comp_parts[i].level > highest_level){
				highest_level = comp_parts[i].level;
			} 
		}
		for(var i = 0; i < comp_parts.length; i++){
			if(comp_parts[i].level == highest_level && review_feed.length < 3) {
				review_feed.push('succes message for' + comp_parts[i].name);
			}
		}
		times_through++;
	}
}

function updateFeed(){
	if(battery_power < quality){
		console.log('no_power!!!')
		review_feed.unshift('the computer did not have enough battery_power');
		no_power = true;
	}
	if(worse_product == true){
		console.log('worse_product!!!')
		review_feed = [
		'is this computer better?',
		'this product just isnt like the last one',
		'you cant sell a worse product'
		];
	}
	if(same_product == true){
		console.log('same_product!!!')
		review_feed = [
		'the computers should always be improving',
		'you cant sell the same product',
		'this is the exact same computer as the last one'
		];
		//no_power = true;
	}
	if(missing_parts > 3){
		review_feed = ['the computer was not complete'];
	}

	while(review_feed.length > 3){
			review_feed.pop();
	}
}
//------------------------------------------------------
//------------------------------------------------------
//stats_functions
function addStat(){
	stats_bar.x += 110;
	stats_bar.height = sale_height;
	var new_stat = sellItem('round_' + round,stats_bar.picture,
		stats_bar.x,0,100,stats_bar.height);
	stats_list.push(new_stat);
	//var new_stat = Object.create(stats_bar);
	//var new_stat = $.extend(Object.create(stats_bar),{});
}

function tickToChassi(){
	if(state == stats){ 
		if(chassi_tick > 0){
			chassi_tick--;
		}else {
			chassi_tick = 15;
			refreshRound();
			updateTempItems();
			stat_slide_condition = true;
			past_state = stats;
			state = transition;
		}
	}
}setInterval(tickToChassi, 1000);

function goToChassi(){
	if(selected_button == to_chassi_button){
		//console.log('working');
		chassi_tick = 15;
		refreshRound();
		updateTempItems();	
		stat_slide_condition = true;
		past_state = stats;
		state = transition;
	}
}

function refreshRound(){
	console.log('CLEAR--------------------------------')
	sell_response = null;
	sale_height = 0;
	transx = 0;

	sale = 0;
	quality = 0;
	sale_limit = 0;
	view_sale = 0;
	cost = 0;
	profit = 0;
	defecit = false;
	worse_product = false;
	same_product = false;
	repeat_product = false;
	new_fans = 0;

	no_power = false;
	battery_power = 0;

	active_channel = null;
	temp_channel = null	;

	active_objects = [];
	temp_objects = [];

	comp_parts = [];
	temp_parts = [];

	full_comp.has_cpu = false;
	full_comp.has_bat = false;
	full_comp.has_mem = false;
	full_comp.has_clock = false;
	full_comp.has_out = false;
	full_comp.has_in = false;
	missing_parts = 0;
	review_feed = [];

	selected_object = null;

	round++;
}

//------------------------------------------------------



///////////////////////////////////////////////////////////
//*********************************************************
///////////////////////////////////////////////////////////





function draw(){
	background();
	drawBag();
	if(state == chassi_select){
		drawChassis();
		displayFnM();
	}
	if(state == build){
		buildMenu();
		drawChannel();
		drawParts();
		drawAesthetic();
		displayFnM();
		mustReplace();
		noSpace();
	}
	if(state == transition){
		drawTempItems();
		saleTransition();
		slideTransition();
		
	}
	if(state == slide){
		drawChannel();
		drawAesthetic();
		drawParts();
		drawTempItems();
		slideOut();
		slideIn();
		displayFnM();
	}
	if(state == menu){
		drawChannel();
		drawAesthetic();
		drawParts();
		drawTempItems();
		drawMenu();
		drawMenuItems();
		drawMenuDescription();
		displayFnM();
		drawCantBuy();
	}
	if(state == put){
	}
	if(state == arrange){
	} 
	if(state == sell){
		drawSaleBar();
		drawSale();
	} 
	if(state == reviews){
		drawReviewItems();
		drawReveiws();
		drawNewFans();
		drawReveiws();
	}
	if(state == stats){
		drawStats();
	}  

	if(active_buttons)drawButtons();
}
//----------------------------------------------------------------------------
//global draw functions
function background(){
	canvas.width = canvas.width;
	//context.drawImage(background_img,100,0,canvas.width -100,canvas.height);
	context.fillStyle = 'AliceBlue';
	context.fillRect(0,0, canvas.width,canvas.height);
	context.fillStyle = 'red';
	context.fillText(state, canvas.width-100, 50);
	if(state == build || state == menu || state == slide || 
		state == transition && past_state == chassi_select && slide_direction == 'left'	||
		state == transition && past_state == build && slide_direction == 'right'	) {
		context.drawImage(build_background_img,0,0, canvas.width,canvas.height+100);
	}else{
		//this line is here so that the build background preloads and prevents lag
		context.drawImage(build_background_img,0,0, canvas.width,canvas.height+100);
		//
		context.drawImage(comp_game_background_img,0,0, canvas.width,canvas.height);
		//moves background right 
		context.drawImage(comp_game_background_moving_img,background_loc,0,(canvas.width*3)-100,canvas.height);
		//moves background left 
		context.drawImage(comp_game_background_moving_img,-(canvas.width*6)-200 -background_loc,0,(canvas.width*6)-200,canvas.height*2);


	} 
	context.fill();
}

function movebackground(){
	if(background_loc <= -(canvas.width*3)-130 + canvas.width){
		background_loc = 0;
	}else {
		background_loc-= 1;
	}
}setInterval(movebackground,10);

function drawBag(){
	if(selected_object){
		if(selected_object.type == 'item'){
			context.drawImage(selected_object.picture,900,500,100,100);
		}else if(selected_object.type == 'part'){
			context.drawImage(selected_object.item_pic,900,500,100,100);
		}
	}
}

function drawButtons(){
	console.log('drawButtons');
    for(var i = 0; i < active_buttons.length; i++){
	    	context.drawImage(active_buttons[i].picture,active_buttons[i].x,
	    		active_buttons[i].y,active_buttons[i].width,active_buttons[i].height);
	}

	//if(stae)
}

function displayFnM(){
	moneyDisplay();
	FansDisplay();
}

function moneyDisplay(){
	context.font = "small-caps 25px Trebuchet MS";
    context.fillStyle = 'Orange';
    context.fillText('MONEY', canvas.width-130, 150);
    context.fillText('$'+ money, canvas.width-130, 190);
   // context.fillStyle = 'white';
   // context.font = "small-caps 48px Trebuchet MS";
    //context.fillText(money, canvas.width-100, 100);

}

function FansDisplay(){
	context.font = "small-caps 25px Trebuchet MS";
    context.fillStyle = 'green';
    context.fillText('FANS', canvas.width-130, 250);
    context.fillText(fans, canvas.width-130, 290);
   // context.fillStyle = 'white';
   // context.font = "small-caps 48px Trebuchet MS";
    //context.fillText(money, canvas.width-100, 100);

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
//transition functions

function slideTransition(){
	if(past_state == chassi_select){
	//	console.log('call 3')
		if(slide_direction == 'right') {
			drawTempItems();
			displayFnM();
		}
		if (slide_direction == 'right'){
			if(fakeMenu < 1000){//this is vary quick transition to menu
				context.fillStyle = 'silver';
			//	context.fillRect(0,0, fakeMenu,canvas.height); 
			//	context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
				duringSlide(true);
			}else{
				context.fillStyle = 'silver';
				resetSlide(false,130,1000,1000,'left');
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
			//		context.fillRect(0,0, fakeMenu,canvas.height);
			//		context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height) 
					duringSlide(true);
				}else{
					context.fillStyle = 'silver';
					resetSlide(false,100,100,100,'right')
					setState();
				}	
		}
	//--------------------------------------------------------------
	}else if(past_state == build){
		if(chosen_chassi){
			if(slide_direction == 'right') {
				drawTempItems();
				displayFnM();
			}
			console.log('call 1')
			if (slide_direction == 'right'){
				if(fakeMenu < 1000){//this is vary quick transition to menu
					context.fillStyle = 'silver';
				//	context.fillRect(0,0, fakeMenu,canvas.height); 
				//	context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
					duringSlide(true);
				}else{
					context.fillStyle = 'silver';
					resetSlide(false,145,1000,1000,'left');
				}	
			} else if (slide_direction == 'left'){
				selected_object = null;
				if(fakeMenu > 0){//this is vary quick transition to menu
					context.fillStyle = 'silver';
				//		context.fillRect(0,0, fakeMenu,canvas.height); 
				//		context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
					duringSlide(true);
				}else{
					context.fillStyle = 'silver';
					resetSlide(false,70,0,0,'right')
					setState();
				}	
			}
		}else{
			if(slide_direction == 'right') {
				drawTempItems();
				displayFnM();
			}
			console.log('call 1')
			if (slide_direction == 'right'){
				if(fakeMenu < 1000){//this is vary quick transition to menu
					context.fillStyle = 'silver';
				//	context.fillRect(0,0, fakeMenu,canvas.height); 
				//	context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
					duringSlide(true);
				}else{
					context.fillStyle = 'silver';
					resetSlide(false,145,1000,1000,'left');
				}	
			} else if (slide_direction == 'left'){
				selected_object = null;
				if(fakeMenu > 0){//this is vary quick transition to menu
					context.fillStyle = 'silver';
				//	context.fillRect(0,0, fakeMenu,canvas.height); 
				//	context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
					duringSlide(true);
				}else{
					context.fillStyle = 'silver';
					resetSlide(false,145,0,0,'right')
					setState();
				}	
			}
		}
	//--------------------------------------------------------------
	}else if(past_state == stats){
		console.log('call 4')
		if (slide_direction == 'right'){
			if(fakeMenu < 1000){//this is vary quick transition to menu
				context.fillStyle = 'silver';
			//	context.fillRect(0,0, fakeMenu,canvas.height); 
				duringSlide(true);
			}else{
				context.fillStyle = 'silver';
				resetSlide(false,145,1000,1000,'left');
			}	
		} else if (slide_direction == 'left'){
			 if(fakeMenu > 0){//this is vary quick transition to menu
					context.fillStyle = 'silver';
				//	context.fillRect(0,0, fakeMenu,canvas.height); 
					duringSlide(true);
				}else{
					context.fillStyle = 'silver';
					resetSlide(false,145,0,0,'right')
					setState();
				}	
		}
	}
	context.fillRect(0,0, fakeMenu,canvas.height); 
	context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
}

function saleTransition(){
	console.log('call 5')
	if(past_state == sell && sell_response){
		drawSaleBar();
		drawSale();
		drawReviewItems();
		drawNewFans();
		drawReveiws();
		saleSlide();
	}else if(past_state == reviews){
	//	drawSaleBar();
		drawReviewItems();
		drawNewFans();

		drawStats();
		reviewSlide();
	}
}
			
function saleSlide(){
	if(transx < 1000){//this is vary quick transition to menu
		duringSaleSlide(true);
	}else{
		resetSlide(false,70,0,0,'right');
		setState();
	}	
}

function reviewSlide(){
	if(transx < 2000 && stat_slide_condition == true){
		duringSaleSlide(true);
	}else{
		resetSlide(false,145,0,0,'right');
		setState();
	}	
}

function duringSaleSlide(if_slide){
	sliding = if_slide;
	transx += 1 + slideSpeed;
	transx += 1 + slideSpeed;
	slideSpeed = slideSpeed*85/100;
}

function setState(){
	console.log('call 2')
	if(past_state == chassi_select){
		past_state = build;
		state = build;
	} else if (past_state == build){
		//console.log('state > sell')
		if(chosen_chassi){
			state = sell;
			past_state = sell;
		}else {
			state = chassi_select;
			past_state = chassi_select;
		}
	}else if (past_state == sell){
		//console.log('state > reveiw')
		past_state = reviews;
		state = reviews;
	}else if (past_state == reviews){
		state = stats;
		//past_state = stats;
	}else if (past_state == stats){
		past_state = chassi_select;
		state = chassi_select;
	}
}

function drawTempItems(){
	if(slide_direction == 'right'){
		var i = 0;
		if(temp_channel){
				context.drawImage(temp_channel.picture,temp_channel.x,temp_channel.y,temp_channel.width,temp_channel.height)
			}
			if(temp_aesthetic){
				context.drawImage(temp_aesthetic.picture,temp_aesthetic.x,temp_aesthetic.y,temp_aesthetic.width,temp_aesthetic.height)
			}
		if(temp_objects){
			for(;i < temp_objects.length; i++){
				context.drawImage(temp_objects[i].picture,temp_objects[i].x,temp_objects[i].y,temp_objects[i].width,temp_objects[i].height)
			}
		}
		if(temp_buttons){
			for(;i < temp_buttons.length; i++){
				context.drawImage(temp_buttons[i].picture,temp_buttons[i].x,temp_buttons[i].y,temp_buttons[i].width,temp_buttons[i].height)
			}
		}
		if(temp_border){
		//	console.log ('(++++++++++++++++++++)' + '(++++++++++++++++++++)')
			context.drawImage(temp_border.picture,temp_border.x - transx,
				temp_border.y,temp_border.width,temp_border.height)

			if(temp_stats.length > 6){
				var i = stats_list.length - 6;
			} else{
				var i = 0
			}
			var adjustment_size = i*110;
			for(; i < temp_stats.length; i++){
				if(temp_stats[i].height > 0){
					context.drawImage(sale_bar_img,temp_stats[i].x - adjustment_size - transx,
						temp_stats[i].y + (550+8) - temp_stats[i].height,temp_stats[i].width,temp_stats[i].height-16);
				}
			}
		}
		
	}

	if(state == menu || state == slide){
		console.log('drawing temp items')
		if(temp_buttons){
			for(var t = 0;t < temp_buttons.length; t++){
				context.drawImage(temp_buttons[t].picture,temp_buttons[t].x,temp_buttons[t].y,temp_buttons[t].width,temp_buttons[t].height)
			}
		}
	}
	//var i = 0;
	//for(;i < temp.length; i++){
	//	context.drawImage(comp_parts[i].picture,comp_parts[i].x,comp_parts[i].y,comp_parts[i].width,comp_parts[i].height)
	//}
}

//----------------------------------------------------------------------------
//slide functions
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
function resetSlide(if_slide,slide_speed,fake_menu,menu_box,slide_dir){
	sliding = if_slide;
	slideSpeed = slide_speed;
	fakeMenu = fake_menu;
	menuBox = menu_box;
	slide_direction = slide_dir;
}

function slideOut(){
	if(past_state == build){
		slide_direction = 'right'
		if(fakeMenu < 800){//this is vary quick transition to menu
			context.fillStyle = 'silver';
		//	context.fillRect(0,0, fakeMenu,canvas.height);
		//	context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height) 
			duringSlide(true);
		}else{
			context.fillStyle = 'silver';
			resetSlide(false,100,800,800,'left');
			past_state = menu;
			state = menu;
		}	

		context.fillRect(0,0, fakeMenu,canvas.height);
		context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
	} 

}

function slideIn(){
	if(past_state == menu){
		slide_direction = 'left'
		if(fakeMenu > 100){//this is vary quick transition to menu
			context.fillStyle = 'silver';
			//context.fillRect(0,0, fakeMenu,canvas.height);
			//context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height) 
			duringSlide(true);
		}else{
			context.fillStyle = 'silver';
			resetSlide(false,100,100,100,'left')
			past_state = build;
			state = build;
		}	

		context.fillRect(0,0, fakeMenu,canvas.height); 
		context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
	}
}

//----------------------------------------------------------------------------

//----------------------------------------------------------------------------
//build functions
function buildMenu(){
	context.fillStyle = 'silver';
	context.fillRect(0,0, menuBox,canvas.height); 
	context.drawImage(comp_menu_box_img,fakeMenu-1000,0,1000,canvas.height)
}

function drawChannel(){
	if (chosen_chassi.name == 'desktop'){
		active_channel.x = 170;
		active_channel.y = 120;
	}
	if (chosen_chassi.name == 'laptop'){
		active_channel.x = 170;
		active_channel.y = 150;
	}
	if (chosen_chassi.name == 'tablet'){
		active_channel.x = 250;
		active_channel.y = 150;
	}
	if (chosen_chassi.name == 'smart_phone'){
		active_channel.x = 400;
		active_channel.y = 170; 
	}
	active_channel.drawObject(); 
}

function drawParts(){
	var i = 0;
	for(;i < comp_parts.length; i++){
		context.drawImage(comp_parts[i].picture,comp_parts[i].x,comp_parts[i].y,comp_parts[i].width,comp_parts[i].height)
	}	
}

function drawA(picture){
	context.drawImage(picture,active_aesthetic.x,
		active_aesthetic.y,active_aesthetic.width,active_aesthetic.height);
}


function drawAesthetic(){
	context.drawImage(aesthetic_back_img,active_aesthetic.x,active_aesthetic.y,active_aesthetic.width,active_aesthetic.height);
	
	for(var i = 0; i < comp_parts.length; i++){
		if(comp_parts[i].name == 'output_lv1_part') {
			var output_1 = true;
		}
		if(comp_parts[i].name == 'output_lv2_part') {
			var output_2 = true;
		}
		if(comp_parts[i].name == 'output_lv3_part') {
			var output_3 = true;
		}
		if(comp_parts[i].name == 'input_lv1_part') {
			var input_1 = true;
		}
		if(comp_parts[i].name == 'input_lv2_part') {
			var input_2 = true;
		}
		if(comp_parts[i].name == 'input_lv3_part') {
			var input_3 = true;
		}
	}

	if (chosen_chassi.name == 'desktop'){
		drawA(desktop_aesthetic_img);
		if(output_1 == true)drawA(desktop_screen_aesthetic_img);
		if(output_2 == true)drawA(desktop_audio_aesthetic_img);
		if(output_3 == true)drawA(desktop_wifi_aesthetic_img);
		if(input_1 == true)drawA(desktop_keyboard_aesthetic_img);
		if(input_2 == true)drawA(desktop_mouse_aesthetic_img);
		if(input_3 == true)drawA(desktop_camera_aesthetic_img);

	}
	if (chosen_chassi.name == 'laptop'){
		drawA(laptop_aesthetic_img);
		if(output_1 == true)drawA(laptop_screen_aesthetic_img);
		if(output_2 == true)drawA(laptop_audio_aesthetic_img);
		if(output_3 == true)drawA(laptop_wifi_aesthetic_img);
		if(input_1 == true)drawA(laptop_touch_aesthetic_img);
		if(input_2 == true)drawA(laptop_mic_aesthetic_img);
		if(input_3 == true)drawA(laptop_camera_aesthetic_img);
	}
	if (chosen_chassi.name == 'tablet'){
		drawA(tablet_aesthetic_img);
		if(output_1 == true)drawA(tablet_screen_aesthetic_img);
		if(output_2 == true)drawA(tablet_audio_aesthetic_img);
		if(output_3 == true)drawA(tablet_wifi_aesthetic_img);
		if(input_1 == true)drawA(tablet_keyboard_aesthetic_img);
		if(input_2 == true)drawA(tablet_mic_aesthetic_img);
		if(input_3 == true)drawA(tablet_camera_aesthetic_img);
	}
	if (chosen_chassi.name == 'smart_phone'){
		drawA(phone_aesthetic_img);
		if(output_1 == true)drawA(phone_screen_aesthetic_img);
		if(output_2 == true)drawA(phone_audio_aesthetic_img);
		if(output_3 == true)drawA(phone_wifi_aesthetic_img);
		if(input_1 == true)drawA(phone_touchscreen_aesthetic_img);
		if(input_2 == true)drawA(phone_pen_aesthetic_img);
		if(input_3 == true)drawA(phone_camera_aesthetic_img);
	}
	active_aesthetic.drawObject(); 
}

//--------------------------------------------------------
//too many of particular part error
function mustReplace(){
	if (replace_tick > 0) {
		context.drawImage(cant_buy_img,350,150);
	}
} 
function replaceTicker(){
	if (replace_tick > 0) {
		replace_tick--;
	}else {
		replace_tick = 0;
	}
} setInterval(replaceTicker, 1000);
//---------------------------------------------------------
//--------------------------------------------------------
//placement error
function noSpace(){
	if (no_space_tick > 0) {
		context.drawImage(cant_buy_img,350,150);
	}
} 
function noSpaceTicker(){
	if (no_space_tick > 0) {
		no_space_tick--;
	}else {
		no_space_tick = 0;
	}
} setInterval(noSpaceTicker, 1000);
//---------------------------------------------------------

//----------------------------------------------------------------------------
//menu functions

function drawMenu(){
	context.fillStyle = 'silver';
	context.fillRect(0,0,menuBox,canvas.height); 
	context.drawImage(comp_menu_box_img,menuBox-1000,0,1000,canvas.height)

}

function drawMenuItems(){
//	console.log('drawItem');
	var itemx = item_pos.x;
	var itemy = item_pos.y;

	var page_list = menu_list[page_index];

	//context.font = "24px serif";
    for(var i = 0; i < page_list.length; i++){
    	if( - 100 < itemx && itemx < 700){

    		page_list[i].x = itemx;
    		page_list[i].y = itemy;

    //		console.log('page_list[i].name:'+page_list[i].name);
	    	context.drawImage(page_list[i].picture,page_list[i].x,page_list[i].y,page_list[i].width,page_list[i].height);
	    	/*
		 	context.drawImage(menu_title_img,300,-60, 700,1000);
			context.drawImage(menu_pillar_img, 120,100, 220,45);
		 	context.drawImage(menu_bridge_img, 120,350, 200,40);
		    drawI(menuPillars[i].item,itemx,itemy);
		    if(fakeMenu >= 200) context.drawImage(menu_end2_img,0,-4, 50,canvas.height +8);
		    context.drawImage(menu_end_img,fakeMenu -100,0, 140,canvas.height);
		    context.drawImage(menu_label_img,fakeMenu -80,0, 100,canvas.height);
		    */
		}
	    itemx += IspaceingSize;
	}
}

function drawMenuDescription(){

	var page_list = menu_list[page_index];

	context.font = "small-caps 40px Trebuchet MS";
	 context.fillStyle = 'black';
	context.fillText(page_list[0].item_type,50, 50);

	context.font = "small-caps 25px Trebuchet MS";
    //------------------------------------------------
    if(page_list[0].item_type == 'cpu'){
	    context.fillText('the cpu is the brain of the computer,', 200, 500);
   		context.fillText('its what makes the computer run', 200, 520);
	}else if(page_list[0].item_type == 'battery'){
	    context.fillText('the battery is the computers power scource,', 200, 500);
   		context.fillText('its what gives the computer energy to function', 200, 520);
	}else if(page_list[0].item_type == 'memory'){
	    context.fillText('the memory is the storage space of the computer.', 200, 500);
   		context.fillText('It also effects the speed of the computer', 200, 520);
	}else if(page_list[0].item_type == 'clock'){
	    context.fillText('the clock is what keeps the computer', 200, 500);
   		context.fillText('running in since with itself', 200, 520);
	}else if(page_list[0].item_type == 'input'){
	    context.fillText('the output is how the computer recives comands', 200, 500);
   		context.fillText('from the user, this comes in many forms', 200, 520);
	}else if(page_list[0].item_type == 'output'){
	    context.fillText('the input is how the computer gives info', 200, 500);
   		context.fillText('to the user, this comes in many forms', 200, 520);
	}
	//------------------------------------------------
	if(selected_object == null){
		if(page_list[0].part.width > 100 || page_list[0].part.height > 100){
		 	context.drawImage(page_list[0].part.picture,50,470,page_list[1].part.width/2,page_list[1].part.height/2);
		}else {
			context.drawImage(page_list[0].part.picture,50,470,page_list[1].part.width,page_list[1].part.height);
		}
	}else if (selected_object.item_type == page_list[0].item_type){
		if(selected_object.item_type == 'input' || selected_object.item_type == 'output'){
			findAesthetic()
		} else if(page_list[1].part.width > 100 || page_list[1].part.height > 100){
			if(selected_object.type == 'item'){
		 		context.drawImage(selected_object.part.picture,50,470,page_list[1].part.width/2,page_list[1].part.height/2);
		 	} else if(selected_object.type == 'part'){
				context.drawImage(selected_object.picture,50,470,page_list[1].part.width/2,page_list[1].part.height/2);
			}
		}else {
			if(selected_object.type == 'item'){
				context.drawImage(selected_object.part.picture,50,470,page_list[1].part.width,page_list[1].part.height);
			} else if(selected_object.type == 'part'){
				context.drawImage(selected_object.picture,50,470,page_list[1].part.width,page_list[1].part.height);
			}
		}
	}
}

function findAesthetic(){
	if (selected_object.item_type == 'input'){
		for(var i = 0; i < input_aesthetic_list.length; i++){
			if(input_aesthetic_list[i][0] == chosen_chassi.name){
			//	for(var p = 0; p < input_aesthetic_list.length; p++){
					//if(input_aesthetic_list[i])
				if(selected_object.type == 'item'){
					input_aesthetic_list[i][selected_object.part.level].drawObject();
				} else if(selected_object.type == 'part'){
					input_aesthetic_list[i][selected_object.level].drawObject();
				}
			}
		}
	} else if (selected_object.item_type == 'output'){
		for(var i = 0; i < output_aesthetic_list.length; i++){
			console.log('gothere');
			if(output_aesthetic_list[i][0] == chosen_chassi.name){
			//	for(var p = 0; p < input_aesthetic_list.length; p++){
					//if(input_aesthetic_list[i])
				if(selected_object.type == 'item'){
					output_aesthetic_list[i][selected_object.part.level].drawObject();
				} else if(selected_object.type == 'part'){
					output_aesthetic_list[i][selected_object.level].drawObject();
				}
			}
		}
	}
}

function drawCantBuy(){
	if(cant_buy == true && promptcount > 0) {
		context.drawImage(cant_buy_img,70,30);
	}
}
//----------------------------------------------------------------------------

//sell functions
//----------------------------------------------------------------------------
function drawSaleBar(){
	var i = 0;
	for(;i < sell_items.length; i++){
		context.drawImage(sell_items[i].picture,sell_items[i].x - transx,sell_items[i].y,
			sell_items[i].width,sell_items[i].height)
	}
}

function drawSale(){
	context.font = "small-caps 80px Trebuchet MS";
    context.fillStyle = 'LightSeaGreen';
     context.fillText('SALES', canvas.width-325 - transx, 200);

     context.font = "small-caps 50px Trebuchet MS";
    context.fillStyle = 'LightSeaGreen';
     if (sell_response) context.fillText(sell_response, 50 - transx, 200);

     context.font = "small-caps 80px Trebuchet MS";
    context.fillStyle = 'gold';
    context.fillText('$'+ view_sale, canvas.width-360 - transx, 300);
}

//----------------------------------------------------------------------------

//reviews functions
//----------------------------------------------------------------------------
function drawReviewItems(){
	context.drawImage(reviews_list[review_index].picture,reviews_list[review_index].x - transx +1000,
	reviews_list[review_index].y,reviews_list[review_index].width,reviews_list[review_index].height)
}

function drawReveiws(){
	context.font = "small-caps 50px Trebuchet MS";
    context.fillStyle = 'red';
    var y = 0;
  	for(var i = 0; i < review_feed.length; i++,y+= 100){
    	context.fillText(review_feed[i], 250 - transx + 1000, 130 + y);
		context.drawImage(cant_buy_img,250 - transx + 1000, 130 + y);

	}
}

function drawNewFans(){
	context.font = "small-caps 80px Trebuchet MS";
    context.fillStyle = 'LightSeaGreen';
    context.fillText('NEW FANS', 320 - transx + 1000, 490);
  
    var digits = new_fans.toString().length;

    if(new_fans >= 0){
	    context.font = "small-caps 60px Trebuchet MS";
	    context.fillText(new_fans,500 - digits*16 - transx + 1000, 560);
	} if(new_fans < 0){
		context.font = "small-caps 60px Trebuchet MS";
		 context.fillStyle = 'red';
	    context.fillText(new_fans,500 - digits*16 - transx + 1000, 560);
	}

}

//----------------------------------------------------------------------------

//stats functions
//----------------------------------------------------------------------------
function drawStats(){
	context.drawImage(stats_border.picture,stats_border.x - transx + 2000,
	stats_border.y,stats_border.width,stats_border.height)
	if(stats_list.length > 6){
		var i = stats_list.length - 6;
	} else{
		var i = 0
	}
	var adjustment_size = i*110;
	for(; i < stats_list.length; i++){
		if(stats_list[i].height > 0){
			context.drawImage(stats_list[i].picture,stats_list[i].x - adjustment_size - transx + 2000,
				stats_list[i].y + (550+8) - stats_list[i].height,stats_list[i].width,stats_list[i].height-16);
		}

	}
	/*
	if(stats_list.length > 1){
		context.drawImage(stats_list[1].picture,stats_list[1].x - transx + 2000,
		stats_list[1].y + 550 - stats_list[1].height,stats_list[1].width,stats_list[1].height)
	}
		context.drawImage(stats_list[0].picture,stats_list[0].x - transx + 2000,
		stats_list[0].y + 550 - stats_list[0].height,stats_list[0].width,stats_list[0].height)
	*/
}

//----------------------------------------------------------------------------



//////////////////////////////////////////////////
//mouse functions

document.addEventListener("mousedown", function(){ 
  	mdown = true;
  	if(hovering) pressed = true;
  	if(hovering == true || over_channel == true || over_button == true) clicked = true;
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
    	part_num:'none',
    	//item_type: 'none',

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
		},
	/*	getCopy:function(){
			return this;
		}
	*/
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

function comChannel(name,picture,width,height) {
	var temp = object('communication_channel',700,500);
	temp.name = name;
	temp.picture = picture;
	temp.width = width;
	temp.height = height;
	
	return temp;
}

function aesthetic(name,picture,width,height,x,y) {
	var temp = object('aesthetic',700,500);
	temp.name = name;
	temp.picture = picture;
	temp.width = width;
	temp.height = height;
	if(x) temp.x = x;
	if(y) temp.y = y;
	
	return temp;
}

function menuItem(name,picture,item_type,part) {
	var temp = object('item',180,180);
	temp.name = name;
	temp.picture = picture;

	var new_obj  = $.extend(Object.create(temp), {
		item_type: item_type,
		part:part,
	});
	return new_obj;
}

function part(name,picture,item_pic,item_type,level,message,quality,width,height,cost) {
	var temp = object('part',200,200);
	temp.name = name;
	temp.picture = picture;
	if(width) temp.width = width;
	if(height)temp.height = height;

	var new_obj  = $.extend(Object.create(temp), {
		item_type:item_type,
		level: level,
		message: message,
		quality: quality,
		cost:cost,
		item_pic:item_pic
	});
	return new_obj;
}

function button(name,picture,x,y,width,height) {
	var temp = object('button',100,100);
	temp.name = name;
	temp.picture = picture;
	temp.x = x;
	temp.y = y;
	if(width) temp.width = width;
	if(height)temp.height = height;
	return temp;
}

function sellItem(name,picture,x,y,width,height) {
	var temp = object('sell_item',100,100);
	temp.name = name;
	temp.picture = picture;
	temp.x = x;
	temp.y = y;
	temp.width = width;
	temp.height = height;
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