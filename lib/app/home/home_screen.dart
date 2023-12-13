import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../business/data/restaurant.dart';
import '../../business/data/restaurant_category.dart';
import '../../business/restaurant_service.dart';
import '../_common/theme.dart';
import 'widgets/home_restaurant.dart';
import 'widgets/home_restaurant_category.dart';
import 'widgets/home_top.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final restaurantService = context.read<RestaurantService>();

  List<RestaurantCategory> _categories = [];
  List<Restaurant> _restaurants = [];
  String? _selectedCategoryId;

  void _loadHome() async {
    final categories = await restaurantService.categories;
    final restaurants = await restaurantService.search();
    setState(() {
      _categories = categories;
      _restaurants = restaurants;
    });
  }

  void _selectCategory(String categoryId) {
    _selectedCategoryId = _selectedCategoryId != categoryId ? categoryId : null;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: HomeTop(
                ratedRestaurants: 1240,
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Busque por um restaurante',
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 168.0,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 32.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    final category = _categories[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: HomeRestaurantCategory(
                        actived: _selectedCategoryId == category.id,
                        category: category,
                        onClicked: () => _selectCategory(category.id),
                      ),
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  'Restaurantes perto de você!',
                  style: context.textTheme.titleMedium,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final restaurant = _restaurants[index];
                  return HomeRestaurant(
                    restaurant: restaurant,
                  );
                },
                childCount: _restaurants.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: 0,
        onTap: (index) {},
        selectedItemColor: CubosFoodTheme.color1,
        items: [
          SalomonBottomBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
            ),
            title: const Text('Home'),
          ),
          SalomonBottomBarItem(
            icon: SvgPicture.asset('assets/icons/perfil.svg'),
            title: const Text('Perfil'),
          ),
          SalomonBottomBarItem(
            icon: SvgPicture.asset('assets/icons/salvos.svg'),
            title: const Text('Salvos'),
          ),
          SalomonBottomBarItem(
            icon: SvgPicture.asset('assets/icons/notificacoes.svg'),
            title: const Text('Notificações'),
          ),
        ],
      ),
    );
  }
}
