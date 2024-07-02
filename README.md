# Weather Forecasting Website

A weather forecasting website built using JSP, Servlets, and Eclipse, leveraging an external weather API to provide real-time weather information.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

This project is a weather forecasting website that allows users to get real-time weather information for any location. It utilizes an external weather API to fetch the data and displays it in a user-friendly format. The project is developed using Java Server Pages (JSP) and Servlets in Eclipse.

## Features

- **Real-time Weather Data**: Fetches current weather information from an external API.
- **Search Functionality**: Allows users to search for weather information by city name.
- **Dynamic Themes**: Changes the website theme based on the time of day (light theme for morning and dark theme for night).
- **Responsive Design**: Ensures the website is accessible on various devices.
- **User-Friendly Interface**: Presents weather data in a clean and organized manner.

## Technologies Used

- **Frontend**:
  - HTML5
  - CSS3
  - JavaScript
  - JSP (Java Server Pages)
- **Backend**:
  - Java Servlets
  - API Integration (for weather data)
- **Tools**:
  - Eclipse IDE
  - Apache Tomcat (server)

## Setup Instructions

To set up and run the project locally, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/weather-forecasting-website.git
    cd weather-forecasting-website
    ```

2. **Open the project in Eclipse**:
    - Open Eclipse IDE.
    - Import the project (`File -> Import -> Existing Projects into Workspace`).

3. **Configure the server**:
    - Ensure Apache Tomcat is configured in Eclipse.
    - Right-click on the project and select `Run As -> Run on Server`.

4. **Add your API key**:
    - Obtain an API key from the weather service provider (e.g., OpenWeatherMap).
    - Add your API key to the project configuration file (e.g., `config.properties`).

5. **Run the project**:
    - Right-click on the project and select `Run As -> Run on Server`.
    - Access the application at `http://localhost:8080/weather-forecasting-website/`.

## Usage

### Searching for Weather Information

- **Enter City Name**: Use the search bar to enter the name of the city for which you want to fetch weather information.
- **View Weather Data**: The website will display the current weather, temperature, humidity, wind speed, and other relevant information.

### Dynamic Themes

- **Light Theme**: Automatically applied in the morning hours.
- **Dark Theme**: Automatically applied during the night hours.

## Contributing

We welcome contributions to improve this project. To contribute, follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit them (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a Pull Request.
