part of 'dog_bloc.dart';

@immutable
abstract class DogState {}

class DogInitial extends DogState {}

class DogSuccess extends DogState {
  final DogsModel models;
  DogSuccess({required this.models});
}

class DogError extends DogState {}
