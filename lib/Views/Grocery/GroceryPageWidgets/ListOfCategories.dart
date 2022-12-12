import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controllers/MealsController.dart';
import '../../CategoryMeals/CategoryMealsPage.dart';

class ListOfCategories extends StatelessWidget {
  ListOfCategories({
    Key? key,
  }) : super(key: key);

  final mealsController = Get.find<MealsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.w),
      color: const Color(0xffF5F7F9),
      height: 90.h,
      width: 75.h,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(width: 12.w,);
          },
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(CategoryMeals(category: mealsController.categories![index],));
              },
              child: SizedBox(
                width: 75.h,
                height: 90.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage(mealsController.categories![index].categoryImageUrl)),
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                      ),
                      width: 65.0.h,
                      height: 65.0.h,
                    ),
                    SizedBox(height: 10.h,),
                    Text(mealsController.categories![index].categoryName,style: TextStyle(
                        fontSize: 10.sp,fontWeight: FontWeight.w500,color: const Color(0xff5D5D5F)
                    ),)
                  ],
                ),
              ),
            );
          },itemCount: mealsController.categories!.length,scrollDirection: Axis.horizontal),
    );
  }
}