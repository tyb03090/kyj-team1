document.addEventListener("DOMContentLoaded", function () {
    displayScoreFromSession();
    displayLeaderboard();
});

function displayLeaderboard() {
    const leaderboardData = JSON.parse(sessionStorage.getItem('leaderboardData')) || [];
    const leaderboardTable = document.getElementById('leaderboard');

    // Clear any previous content from the table
    leaderboardTable.innerHTML = '';

    // Create table rows for each player's data
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

        leaderboardTable.appendChild(row);
    }
}

function displayScoreFromSession() {
    const gameScore = sessionStorage.getItem('gameScore');
    const userScoreElement = document.getElementById('userScore');

    if (gameScore) {
        userScoreElement.textContent = gameScore;
    } else {
        userScoreElement.textContent = 'No score available';
    }
}
