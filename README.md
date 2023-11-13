# Flutter Weather App

A minimalistic weather app built with Flutter that provides users with current weather conditions based on their location. The app features delightful animations representing different weather scenarios, making it both functional and visually appealing.

## Features

- **Location-Based Weather:** The app automatically fetches the user's location to provide real-time weather updates for their current location.

- **Animated Weather Icons:** Enjoy animated weather icons that dynamically change based on the current weather conditions. Whether it's sunny, cloudy, or rainy, the app visually represents the weather.

## Getting Started

To run the app locally, follow these steps:

1. Clone this repository:

   ```bash
   git clone https://github.com/KrisD23/MinimalWeatherApp_Flutter_Y
   ```

2. Navigate to the project directory:

   ```bash
   cd flutter-weather-app
   ```

3. Install dependencies:

   ```bash
   flutter pub get
   ```

4. Run the app:

   ```bash
   flutter run
   ```

## Dependencies

- cupertino_icons: ^1.0.2
- http: ^1.1.0
- geolocator: ^10.1.0
- geocoding: ^2.1.1
- lottie: ^2.6.0

- Add any other dependencies you've used in your project.

## API Key

The app requires an API key to fetch weather data. Sign up for a free API key at [OpenWeatherMap](https://openweathermap.org/) and replace `YOUR_API_KEY` in the `lib/pages/weather_page.dart` file.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Weather data provided by [OpenWeatherMap](https://openweathermap.org/).
