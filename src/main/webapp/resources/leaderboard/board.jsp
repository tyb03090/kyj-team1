<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Leaderboard</title>
<!-- 부트스트랩 링크 추가 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="container mt-5 text-center">
		<h2 class="mb-4">2048 Leaderboard</h2>
		<table class="table text-center" id="leaderboard">
			<thead>
				<tr>
					<th>순위</th>
					<th>이름</th>
					<th>점수</th>
					<th>게임 플레이 날짜</th>
					<button onclick="goTitle()">메인화면으로</button>
				</tr>
			</thead>
			<tbody>
				<!-- 여기에 리더보드 데이터가 자동으로 생성될 예정입니다 -->
			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script>
		function goTitle() {
			location.href = "../index.html";
		}

		document.addEventListener("DOMContentLoaded", function() {
			displayLeaderboard();
		});

		function displayLeaderboard() {
			const leaderboardData = JSON.parse(sessionStorage
					.getItem('leaderboardData'))
					|| [];
			const leaderboardTable = document.getElementById('leaderboard');
			const tbody = leaderboardTable.querySelector('tbody');

			tbody.innerHTML = '';

			for (let i = 0; i < leaderboardData.length; i++) {
				const row = document.createElement('tr');
				const rankCell = document.createElement('td');
				const nameCell = document.createElement('td');
				const scoreCell = document.createElement('td');
				const dateCell = document.createElement('td');

				rankCell.textContent = i + 1;
				nameCell.textContent = leaderboardData[i].name;
				scoreCell.textContent = leaderboardData[i].score;
				dateCell.textContent = leaderboardData[i].date;

				row.appendChild(rankCell);
				row.appendChild(nameCell);
				row.appendChild(scoreCell);
				row.appendChild(dateCell);

				tbody.appendChild(row);
			}
		}
	</script>
</body>
</html>