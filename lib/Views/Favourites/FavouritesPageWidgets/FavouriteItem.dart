import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controllers/MealsController.dart';
import '../../../Core/Shared.dart';
import '../../../Models/Meal.dart';

class FavouriteItem extends StatelessWidget {
  final Meal currentMeal;
  FavouriteItem({Key? key,required this.currentMeal}) : super(key: key);
  final mealsController = Get.find<MealsController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Row(
            children: [
              BuildMealImageFromUrl(currentMeal: currentMeal),
              SizedBox(width: 20.w,),
              BuildMealInfo(currentMeal: currentMeal),
              const Spacer(),
              Center(
                child: IconButton(onPressed: () {
                  if(mealsController.favouriteMealsMap.containsKey(currentMeal.mealId)){
                    mealsController.removeMealFromFavourites(currentMeal);
                  }
                  else{
                    mealsController.addMealToFavourites(currentMeal);
                  }
                 },icon: Obx(()=> Icon(getFavouriteIcon(currentMeal.mealId!,mealsController.favouriteMealsMap),size: 30.h,color: getFavouriteIconColor(currentMeal.mealId!,mealsController.favouriteMealsMap))),
                ),
              )
            ],
          ),
          SizedBox(height: 20.h,),
        ],
      ),
    );
  }
}