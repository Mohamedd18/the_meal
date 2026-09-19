import 'package:injectable/injectable.dart';
import 'package:themeal/core/network/result_api.dart';
import 'package:themeal/feature/home/data/data_source/home_data_source_interface.dart';
import 'package:themeal/feature/home/domain/entity/meal_entity.dart';
import 'package:themeal/feature/home/domain/repo/home_repo_interface.dart';

@Injectable(as: HomeRepoInterface)
class HomeRepoImp implements HomeRepoInterface {
  final HomeDataSourceInterface _homeDataSource;

  HomeRepoImp(this._homeDataSource);

  @override
  Future<ResultApi<MealEntity>> getRandomMeal() async {
    final result = await _homeDataSource.getRandomMeal();
    return result;
  }
}
