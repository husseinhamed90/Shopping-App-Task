import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../Controllers/MealsController.dart';
import 'DealItem.dart';

class ListOfDeals extends StatelessWidget {
   ListOfDeals({Key? key}) : super(key: key);
  final mealsController = Get.find<MealsController>();

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 11.w),
      color: const Color(0xffF5F7F9),
      height: 100.h,
      child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 15.w,),
          itemBuilder: (context, index) => DealItem(currentDeal: mealsController.deals![index]),
          itemCount: mealsController.deals!.length,scrollDirection: Axis.horizontal),
    );
  }
}