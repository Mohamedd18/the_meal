import 'package:themeal/core/network/result_api.dart';
import 'package:themeal/feature/home/domain/entity/meal_entity.dart';




abstract interface class HomeRepoInterface {
Future<ResultApi<MealEntity>> getRandomMeal();

}