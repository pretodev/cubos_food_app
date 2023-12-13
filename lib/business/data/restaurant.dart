import 'restaurant_category.dart';

class Restaurant {
  final String id;
  final String name;
  final List<String> tags;
  final String imageUrl;
  final double rating;
  final int likes;
  final RestaurantCategory category;

  Restaurant({
    required this.id,
    required this.name,
    required this.tags,
    required this.imageUrl,
    required this.rating,
    required this.likes,
    required this.category,
  });
}
