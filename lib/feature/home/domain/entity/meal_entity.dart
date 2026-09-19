class MealEntity {
  final String id;
  final String name;
  final String image;
  final String? category;
  final String? area;

   MealEntity({
    required this.id,
    required this.name,
    required this.image,
    this.category,
    this.area,
  });
}