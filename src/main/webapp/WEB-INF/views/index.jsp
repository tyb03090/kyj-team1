<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
img {
	display: inline-block;
	padding: 10px;
	animation: fadein 4s;
	-webkit-animation: fadein 3s;
	width: 400px;
	height: 400px;
}

.play {
	text-align: center;
	margin-top: 50px;
}

.play a {
	display: block;
	width: 100%;
	height: 100%;
	overflow: hidden;
	position: relative;
}

.play figure {
	position: absolute;
	top: -15px;
	left: -30px;
	width: 100%;
	height: 100%;
	animation: fadein-figure 4s;
	-webkit-animation: fadein-figure 3s;
}

.play figcaption {
	width: 400px;
	height: 400px;
	background-color: rgba(0, 0, 0, 0.7);
	padding: auto;
	position: absolute;
	top: 10px;
	color: #fff;
	text-align: center;
	font-size: 50px;
	line-height: 350px;
	opacity: 0;
	transition: 0.3s;
}

.play a:hover figcaption, .play a:focus figcaption {
	opacity: 1;
}

#main {
	animation-name: move;
	animation-duration: 4s;
	animation-iteration-count: 1;
	font-size: 100px;
	margin-top: 30px;
	font-weight: bold;
	color: #fff;
}

@
keyframes move {from { margin-left:1200px;
	
}

to {
	margin-left: 830px;
}

}
@
keyframes fadein {from { opacity:0;
	transform: translate3d(0, 100%, 0);
}

to {
	opacity: 1;
	transform: translateZ(0);
}

}
@
keyframes fadein-figure {from { opacity:0;
	transform: translate3d(0, 100%, 0);
}

to {
	opacity: 1;
	transform: translateZ(0);
}
}
</style>
</head>

<body style="background-color: #2f335d;">
	<div id="main" style="margin-left: 850px;">2048</div>
	<div class="play"
		style="width: 420px; height: 420px; float: left; margin-left: 150px; margin-right: 110px;">
		<h1 style="color: #fff;">3 x 3</h1>
		<a href="../resources/public/3.jsp">
			<figure>
				<img src="../resources/img/2048/three.png" style="margin-left: -20px;">
				<figcaption>Play?</figcaption>
			</figure>
		</a>
	</div>
	<div class="play"
		style="width: 420px; height: 420px; float: left; margin-left: 50px; margin-right: 50px;">
		<h1 style="color: #fff;">4 x 4</h1>
		<a href="../resources/public/4.jsp">
			<figure>
				<img src="../resources/img/2048/four.png" style="margin-left: -20px;">
				<figcaption>Play?</figcaption>
			</figure>
		</a>
	</div>
	<div class="play"
		style="width: 420px; height: 420px; float: left; margin-left: 110px; margin-right: 150px;">
		<h1 style="color: #fff;">5 x 5</h1>
		<a href="../resources/public/5.jsp">
			<figure>
				<img src="../resources/img/2048/five.png" style="margin-left: -20px;">
				<figcaption>Play?</figcaption>
			</figure>
		</a>
	</div>

</body>
</html>