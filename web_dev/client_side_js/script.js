function hideImg1(){
	var x = document.getElementById('black-fox')
	if (x.style.display === 'none'){
		x.style.display = 'block';
	}
	else{
		x.style.display = 'none';
	}
}

function hideImg2(){
	var x = document.getElementById('white-fox')
	if (x.style.display === 'none'){
		x.style.display = 'block';
	}
	else{
		x.style.display = 'none';
	}
}

var btn1 = document.getElementById("black-fox-btn");
btn1.addEventListener("click", hideImg1);

var btn2 = document.getElementById("white-fox-btn");
btn2.addEventListener("click", hideImg2);

document.getElementById("title").innerHTML = "<h1>Look at the foxes!</h1>";
