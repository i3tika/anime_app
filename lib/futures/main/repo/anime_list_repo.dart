// import 'dart:convert';

// import 'package:aniwolrd/futures/main/models/anime_list_models.dart';
// import 'package:dio/dio.dart';

// class AnimeListRepo {
//   final Dio dio;
//   AnimeListRepo({required this.dio});

//   // Future<List<AnimeModels>> getAnimeListRepo({required int amount}) async {
//   //   final response = await dio.get('https://nekos.best/api/v2/hug?amount=9',
//   //       data: {'amount': amount});
//   //   // return AnimeModels.fromJson(response.data);
//   // final List<AnimeModels> result = [];
//   // for (var item in response.data as List) {
//   //   try {
//   //     result.add(AnimeModels.fromJson(item));
//   //   } catch (e) {}
//   // }
//   // return result;
//   // }
//   Future<List<AnimeList>> fetchAnimeList() async {
//     final response = await dio.get('https://nekos.best/api/v2/hug?amount=9');

//     final List<AnimeList> result = [];
//     for (var item in response.data as List) {
//       try {
//         result.add(AnimeList.fromJson(item));
//       } catch (e) {}
//     }
//     return result;
//     // if (response.statusCode == 200) {
//     //   return AnimeList.fromJson(jsonDecode(response.data));
//     // } else {
//     //   throw Exception('Failed to load anime list');
//     // }
//   }
// }
