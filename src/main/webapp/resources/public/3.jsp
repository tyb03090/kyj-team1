<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>2048 Game</title>
<link rel="stylesheet" href="../src/style.css">
</head>
<body>
	<div class="container">
		<h1 id="title">2048</h1>
		<div id="score-container">
			<div id="score-title">SCORE</div>
			<div id="score">0</div>
		</div>
		<div id="best-score-container">
			<div id="best-score-title">BEST SCORE</div>
			<div id="best-score">0</div>
		</div>
		<p id="instructions">
			PC에서는 방향키, 모바일에서는 터치로 <span> 2048</span>을 플레이하세요<span>✨</span>
		</p>
		<div id="game-container-3"></div>
	</div>
	<div id="grid-size" data-grid-size="3"></div>
	<script src="../src/oneScript.js"></script>
</body>
</html>