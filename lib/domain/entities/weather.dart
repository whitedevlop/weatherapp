import 'package:equatable/equatable.dart';

// an "Entity Class" is a plain data class that defines the properties and data types of an object. A model class, on the other hand, can also contain business logic and additional functionality beyond just storing data. However, creating a separate model class can be useful for organizing and separating business logic and data storage.

// "WeatherEntity" class extends the Equatable class and overrides the props method to return a list of the class's properties.
class WeatherEntity extends Equatable {
  const WeatherEntity({
    required this.cityName,
    required this.main,
    required this.description,
    required this.iconCode,
    required this.temperature,
    required this.pressure,
    required this.humidity,
  });

  final String cityName;
  final String main;
  final String description;
  final String iconCode;
  final String temperature;
  final String pressure;
  final String humidity;

  @override
// The props method is used by the Equatable package to determine whether two instances of the class are equal. By returning a list of the class's properties, the props method allows Equatable to compare the values of those properties to determine equality.

  List<Object?> get props => [
        cityName,
        main,
        description,
        iconCode,
        temperature,
        pressure,
        humidity,
      ];
}
