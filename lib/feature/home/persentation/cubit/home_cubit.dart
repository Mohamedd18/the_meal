import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:themeal/core/network/result_api.dart';
import 'package:themeal/feature/home/domain/entity/meal_entity.dart';
import 'package:themeal/feature/home/domain/repo/home_repo_interface.dart';

import 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final HomeRepoInterface repository;

  HomeCubit(this.repository) : super(HomeInitial());

  Future<ResultApi<MealEntity>> getRandomMeal() async {
    emit(HomeLoading());

    try {
      final meal = await repository.getRandomMeal();
      switch (meal) {
        case Success<MealEntity>(data: final data):
          emit(HomeSuccess(data));
        case Error<MealEntity>(messageError: final message):
          emit(HomeError(message));
      }
      return meal;
    } catch (e) {
      emit(HomeError(e.toString()));
      rethrow;
    }
  }
}
