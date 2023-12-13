import '../infra/restaurant_category_datasource.dart';
import '../infra/restaurant_datasource.dart';
import 'data/restaurant.dart';
import 'data/restaurant_category.dart';

class RestaurantService {
  final RestaurantDatasource _restaurantDatasource;
  final RestaurantCategoryDatasource _restaurantCategoryDatasource;

  RestaurantService({
    required RestaurantDatasource restaurantDatasource,
    required RestaurantCategoryDatasource restaurantCategoryDatasource,
  })  : _restaurantDatasource = restaurantDatasource,
        _restaurantCategoryDatasource = restaurantCategoryDatasource;

  Future<List<Restaurant>> search({
    String? query,
    String? categoryId,
  }) async {
    var restaurants = await _restaurantDatasource.getRestaurants();
    if (query != null && query.isNotEmpty) {
      restaurants = restaurants.where((restaurant) {
        return restaurant.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    }
    if (categoryId != null && categoryId.isNotEmpty) {
      restaurants = restaurants.where((restaurant) {
        return restaurant.category.id == categoryId;
      }).toList();
    }
    return restaurants;
  }

  Future<List<RestaurantCategory>> get categories async {
    return _restaurantCategoryDatasource.getCategories();
  }

  Future<int> get ratedRestaurants async => 1240;
}
