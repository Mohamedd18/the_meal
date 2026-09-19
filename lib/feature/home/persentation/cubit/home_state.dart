import 'package:flutter/material.dart';
import 'package:themeal/feature/home/domain/entity/meal_entity.dart';


@immutable
sealed class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  final MealEntity meal;

  HomeSuccess(this.meal);
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
}