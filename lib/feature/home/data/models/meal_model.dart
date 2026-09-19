import 'package:themeal/feature/home/domain/entity/meal_entity.dart';

class MealModel {
  final String id;
  final String name;
  final String image;
  final String? category;
  final String? area;

   MealModel({
    required this.id,
    required this.name,
    required this.image,
    this.category,
    this.area,
  });

  factory MealModel.fromJson(Map<String, dynamic> json) {
    return MealModel(
      id: json['idMeal'] ?? '',
      name: json['strMeal'] ?? '',
      image: json['strMealThumb'] ?? '',
      category: json['strCategory'],
      area: json['strArea'],
    );
  }

  MealEntity toEntity() {
    return MealEntity(
      id: id,
      name: name,
      image: image,
      category: category,
      area: area,
    );
  }
}