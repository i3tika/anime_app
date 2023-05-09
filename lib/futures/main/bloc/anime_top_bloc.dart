// import 'package:aniwolrd/futures/main/repo/anime_list_repo.dart';
// import 'package:bloc/bloc.dart';
// import 'package:meta/meta.dart';

// import '../models/anime_list_models.dart';

// part 'anime_top_event.dart';
// part 'anime_top_state.dart';

// class AnimeTopBloc extends Bloc<AnimeTopEvent, AnimeTopState> {
//   AnimeTopBloc({required this.repo}) : super(AnimeTopInitial()) {
//     on<GetAnimeTopEvent>((event, emit) async {
//       try {
//         final results = await repo.fetchAnimeList();
//         emit(AnimeTopSuccess(models: results));
//       } catch (e) {
//         emit(AnimeTopError());
//       }
//     });
//   }
//   final AnimeListRepo repo;
// }
