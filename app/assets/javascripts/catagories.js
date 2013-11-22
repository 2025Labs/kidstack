// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var image1;
var image2;
var image3;	
var step=1;
	
function showSlideshow (){
	image1=new Image()
	image1.src='/assets/introvideo.png';
	image2=new Image();
	image2.src='/assets/arrow.png';
	image3=new Image();
	image3.src="/assets/kidstack75x75.png";	
	
	var snd = new Audio('/assets/voiceproject.m4a'); // buffers automatically when created
	snd.addEventListener('ended', advance);
	snd.load();
	snd.play();
}

function advance()
{
//	alert("play complete");
	slideIt();
}

function slideIt() {
	document.images.slide.src=eval("image"+step+".src");
	if (step<3)
	{
		step++;
		//call function "slideit()" every 2.5 seconds
		setTimeout("slideIt()",2500)
	}
	else
		step=1;
}