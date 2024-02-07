// weather repository is an abstract class and will be defined later.
// why should be define abstract? because the domain should be independent of other class. but how can it be independent when usecase obtain data from repository that is shared with datalayer?

// that is because of dependency inversion. in domain layer we create the abstract repository class to define the contract what the repository must do and then in data layer, we write its actual implementation.

import 'package:dartz/dartz.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/domain/entities/weather.dart';

abstract class WeatherRepository {
  // BELOW HERE IF RESPONSE SUCCESS-> WeatherEntity ELSE ->
  Future<Either<Failure, WeatherEntity>> getCurrentWeather(String cityName);
}
