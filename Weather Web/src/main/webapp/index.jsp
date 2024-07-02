<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Weather Information</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- FontAwesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body.light {
            background: linear-gradient(to right, #ffefba, #ffffff);
            color: #000;
        }
        body.dark {
            background: linear-gradient(to right, #000, #434343);
            color: #fff;
        }
        .container-main {
            display: flex;
            justify-content: center;
            padding: 30px;
            margin-top: 20px;
        }
        .weather-info, .additional-info {
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            text-align: center;
            margin: 0 10px; /* Decreased distance between boxes */
        }
        .weather-info:hover, .additional-info:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.8);
        }
        h1, h2 {
            margin-bottom: 20px;
            font-size: 2em;
        }
        p {
            font-size: 1.2em;
        }
        .icon {
            font-size: 4em;
            margin-bottom: 10px;
        }
        .icon.sun {
            color: #f39c12;
        }
        .icon.cloud {
            color: #95a5a6;
        }
        .icon.rain {
            color: #3498db;
        }
        .icon.stars {
            color: #f1c40f;
        }
        .greeting {
            font-size: 1.5em;
            margin-top: 20px;
        }
        .additional-info div {
            background-color: #5a99d4;
            border-radius: 5px;
            padding: 10px;
            margin: 10px 0;
            transition: background-color 0.3s ease-in-out;
        }
        .additional-info div:hover {
            background-color: #487eb0;
        }
        .search-bar {
            margin-bottom: 20px;
        }
        .search-bar input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
    <script>
        window.onload = function() {
            var hours = new Date().getHours();
            if (hours >= 6 && hours < 18) {
                document.body.classList.add('light');
            } else {
                document.body.classList.add('dark');
            }

            var weatherCondition = "${weatherCondition}".toLowerCase();
            var iconContainer = document.getElementById('weather-icon');
            
            if (hours >= 6 && hours < 18) {
                if (weatherCondition.includes("clear")) {
                    iconContainer.innerHTML = '<i class="fas fa-sun icon sun"></i>';
                } else if (weatherCondition.includes("cloud")) {
                    iconContainer.innerHTML = '<i class="fas fa-cloud icon cloud"></i>';
                } else if (weatherCondition.includes("rain")) {
                    iconContainer.innerHTML = '<i class="fas fa-cloud-showers-heavy icon rain"></i>';
                }
            } else {
                iconContainer.innerHTML = '<i class="fas fa-star icon stars"></i>';
            }
        };
    </script>
</head>
<body>
    <div class="container-main">
        <div class="weather-info">

            <h2>${city}</h2>
            <div id="weather-icon"></div>
            <p><strong>${temperature}°C</strong></p>
            <p>${weatherCondition}</p>
            <p>${date}</p>
        </div>
        <div class="additional-info">
            <div>
                <p><strong>Humidity:</strong> ${humidity}%</p>
            </div>
            <div>
                <p><strong>Wind Speed:</strong> ${windSpeed} m/s</p>
            </div>
            <div>
                <p><strong>Real Feel:</strong> ${temperature}°C</p>
            </div>
            <div>
                <p><strong>Pressure:</strong> 1000 mb</p>
            </div>
            <div>
                <p><strong>Change of rain:</strong> 70%</p>
            </div>
            <div>
                <p><strong>Temperature History:</strong> <span>31°C</span></p>
            </div>
            <div>
                <p><strong>Sun:</strong> Rise 5:17 AM, Set 5:17 PM</p>
            </div>
            <div>
                <p><strong>Moon:</strong> Rise 5:17 AM, Set 5:17 PM</p>
            </div>
        </div>
    </div>
    <div class="greeting">
        <p><i class="fas fa-heart"></i> Have a great day!</p>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
