import 'package:equatable/equatable.dart';

// the Failure class is an abstract class that defines a common structure for failure objects in the application. It extends the Equatable class to take advantage of its features, such as the props method. The Failure class has a single property, message, which represents the error message associated with the failure. The props method returns a list containing the message property, allowing the Equatable package to compare the values of the message property to determine equality between two instances of the Failure class.

abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}

class ConnectionFailure extends Failure {
  const ConnectionFailure(String message) : super(message);
}

class DatabaseFailure extends Failure {
  const DatabaseFailure(String message) : super(message);
}
