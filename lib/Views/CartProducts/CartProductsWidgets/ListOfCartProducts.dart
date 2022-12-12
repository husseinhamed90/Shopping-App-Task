import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controllers/MealsController.dart';
import '../../../Models/Meal.dart';
import 'CartProductItem.dart';

class ListOfCartProducts extends StatelessWidget {
  ListOfCartProducts({Key? key}) : super(key: key);
  final mealsController = Get.find<MealsController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => SliverFixedExtentList(
        itemExtent: 100.h,
        delegate: SliverChildBuilderDelegate((context, index) => CartProductItem(currentMeal: mealsController.cartProducts[index]),
          childCount: mealsController.cartProducts.length,
        ),
      ),
    );
  }
}



