import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controllers/MealsController.dart';
import '../../../Core/Shared.dart';
import '../../../Models/Meal.dart';

class CartProductItem extends StatelessWidget {
  Meal currentMeal;
  CartProductItem({Key? key,required this.currentMeal}) : super(key: key);
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
              Obx(() => Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      mealsController.decrementMealQuantity(currentMeal);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffb0eafd),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      width: 37.0.h,
                      height: 37.0.h,
                      child: const Icon(Icons.remove,color: Color(0xff48b6da)),
                    ),
                  ),
                  SizedBox(width: 12.w,),
                  Text( mealsController.cartMealsWithQuantities[currentMeal.mealId].toString(),style: TextStyle(
                      fontSize: 19.sp,color: const Color(0xff424242),fontWeight: FontWeight.bold
                  )),
                  SizedBox(width: 12.w,),
                  GestureDetector(
                    onTap: () {
                      mealsController.incrementMealQuantity(currentMeal);
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xffb0eafd),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                      ),
                      width: 37.0.h,
                      height: 37.0.h,
                      child: const Icon(Icons.add,color: Color(0xff48b6da)),
                    ),
                  ),
                ],
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



