import '../business/data/restaurant.dart';
import '../business/data/restaurant_category.dart';

class RestaurantDatasource {
  Future<List<Restaurant>> getRestaurants() async {
    return [
      Restaurant(
        id: '01',
        name: 'Tempero de mainha',
        tags: ['Brasileira', 'Nordestina', 'Caseira'],
        imageUrl:
            'https://lh5.googleusercontent.com/p/AF1QipNusZ7uVqH7XXlN51MxebiKSBBrFNWS4PntjaQz=w408-h375-k-no',
        rating: 0.93,
        likes: 23,
        category: RestaurantCategory(
          id: '01',
          name: 'Jantar',
          assetName: 'jantar',
        ),
      ),
      Restaurant(
        id: '02',
        name: 'Acarajé da Dinha',
        tags: ['Jantar', 'Almoço', 'Turismo'],
        imageUrl:
            'https://lh5.googleusercontent.com/p/AF1QipP3_02D28AlE3-rSEEpmA49xQX289b4Acj9Js2J=w408-h490-k-no',
        rating: 0.99,
        likes: 54,
        category: RestaurantCategory(
          id: '03',
          name: 'Lanche',
          assetName: 'lanche',
        ),
      ),
      Restaurant(
        id: '03',
        name: 'Cais do Porto - Bar e Restaurante',
        tags: ['Jantar', 'Bebidas', 'Caseira'],
        imageUrl:
            'https://lh5.googleusercontent.com/p/AF1QipOm5Sa5tggaOZxaCJU5UI1LeAPmhOg-9ace84PI=w426-h240-k-no',
        rating: 0.95,
        likes: 48,
        category: RestaurantCategory(
          id: '02',
          name: 'Almoço',
          assetName: 'almoco',
        ),
      ),
    ];
  }
}
