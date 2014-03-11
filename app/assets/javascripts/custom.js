var myVar=setInterval(function(){myTimer()},1000);
var myVar=setInterval(function(){Banana()},3000);

function myTimer()
{
	var d=new Date();
	var t=d.toLocaleTimeString();
	document.getElementById("demo").innerHTML=t;
}


function Banana()
{
	
	document.getElementById("banana").innerHTML="Banana";
}

