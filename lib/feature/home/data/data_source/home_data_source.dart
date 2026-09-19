import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:themeal/core/network/result_api.dart';
import 'package:themeal/feature/home/data/data_source/home_data_source_interface.dart';
import 'package:themeal/feature/home/domain/entity/meal_entity.dart';

import '../../../../core/network/api_constants.dart';

@Injectable(as: HomeDataSourceInterface)
class HomeRemoteDataSourceImpl implements HomeDataSourceInterface {
  final Dio _dio;

  HomeRemoteDataSourceImpl(this._dio);

  @override
  Future<ResultApi<MealEntity>> getRandomMeal() async {
    try {
      final response = await _dio.get(ApiConstants.randomMeal);
      if (response.statusCode == 200) {
        final data = response.data['meals'][0] as Map<String, dynamic>;
        final meal = MealEntity(
          id: data['idMeal'] as String,
          name: data['strMeal'] as String,
          image: data['strMealThumb'] as String,
          category: data['strCategory'] as String?,
          area: data['strArea'] as String?,
        );

        return Success(meal);
      } else {
        return Error('Failed to load random meal');
      }
    } catch (e) {
      return Error('Failed to load random meal: $e');
    }
  }
}
