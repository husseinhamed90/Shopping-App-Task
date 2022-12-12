import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controllers/MealsController.dart';
import '../../../Core/Shared.dart';
import '../../../Models/Deal.dart';

class FavouriteIcon extends StatelessWidget {
  FavouriteIcon({
    Key? key,
    required this.currentDeal,
  }) : super(key: key);

  final Deal currentDeal;
  final mealsController = Get.find<MealsController>();

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top :-1.h,
        left:-1.w,
        child:  GestureDetector(
          onTap: () {
            if(isMealInFavourites(currentDeal.dealMeal!.mealId!,mealsController.favouriteMealsMap)){
              mealsController.removeMealFromFavourites(currentDeal.dealMeal!);
            }
            else{
              mealsController.addMealToFavourites(currentDeal.dealMeal!);
            }
          },
          child: Center(
            child: Container(
              margin: EdgeInsets.all(4.w),
              height: 20.w,
              width: 20.w,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30),topRight:  Radius.circular(30),bottomLeft:  Radius.circular(30)),
              ),
              child: Obx(()=> Icon(
                  getFavouriteIcon(currentDeal.dealMeal!.mealId!,mealsController.favouriteMealsMap),
                  size: 12.w,
                  color: getFavouriteIconColor(currentDeal.dealMeal!.mealId!,mealsController.favouriteMealsMap))
              ),
            ),
          ),
        )
    );
  }
}