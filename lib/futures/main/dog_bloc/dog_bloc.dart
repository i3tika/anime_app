import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../models/dogs_model.dart';
import '../repo/get_dogs_repo.dart';

part 'dog_event.dart';
part 'dog_state.dart';

class DogBloc extends Bloc<DogEvent, DogState> {
  DogBloc({required this.repo}) : super(DogInitial()) {
    on<GetDogEvent>((event, emit) async {
      try {
        final result = await repo.getDogsData();
        emit(DogSuccess(models: result));
      } catch (e) {
        emit(DogError());
      }
    });
  }
  final GetDogsRepo repo;
}
