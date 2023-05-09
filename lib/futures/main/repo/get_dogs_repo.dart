import 'package:dio/dio.dart';

import '../models/dogs_model.dart';

class GetDogsRepo {
  final Dio dio;
  GetDogsRepo({required this.dio});

  Future<DogsModel> getDogsData() async {
    final response = await dio.get('https://dog.ceo/api/breeds/image/random/');
    return DogsModel.fromJson(response.data);
  }
}
