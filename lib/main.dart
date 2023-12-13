import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/cubos_food_app.dart';
import 'business/auth_service.dart';
import 'business/order_service.dart';
import 'business/restaurant_service.dart';
import 'infra/restaurant_category_datasource.dart';
import 'infra/restaurant_datasource.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (_) => AuthService()),
        Provider(
          create: (_) => RestaurantService(
            restaurantDatasource: RestaurantDatasource(),
            restaurantCategoryDatasource: RestaurantCategoryDatasource(),
          ),
        ),
        Provider(create: (_) => OrderService()),
      ],
      child: const CubosFoodApp(),
    ),
  );
}
