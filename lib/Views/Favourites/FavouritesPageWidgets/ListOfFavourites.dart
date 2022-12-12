import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/Views/Favourites/FavouritesPageWidgets/FavouriteItem.dart';
import '../../../Controllers/MealsController.dart';

class ListOfFavourites extends StatelessWidget {
  ListOfFavourites({Key? key}) : super(key: key);
  final mealsController = Get.find<MealsController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => SliverFixedExtentList(
      itemExtent: 100.h,
      delegate: SliverChildBuilderDelegate((context, index) => FavouriteItem(currentMeal: mealsController.favourites[index]),
        childCount: mealsController.favourites.length,
      ),
     ),
    );
  }
}