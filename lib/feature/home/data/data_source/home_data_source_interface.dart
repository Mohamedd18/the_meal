import 'package:themeal/core/network/result_api.dart';
import 'package:themeal/feature/home/domain/entity/meal_entity.dart';
abstract interface class HomeDataSourceInterface {
  Future<ResultApi<MealEntity>> getRandomMeal();
}