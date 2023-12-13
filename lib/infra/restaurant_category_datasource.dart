import '../business/data/restaurant_category.dart';

class RestaurantCategoryDatasource {
  Future<List<RestaurantCategory>> getCategories() async {
    return [
      RestaurantCategory(id: '01', name: 'Jantar', assetName: 'jantar'),
      RestaurantCategory(id: '02', name: 'Almoço', assetName: 'almoco'),
      RestaurantCategory(id: '03', name: 'Lanche', assetName: 'lanche'),
      RestaurantCategory(id: '04', name: 'Sobremesa', assetName: 'sobremesa'),
    ];
  }
}
