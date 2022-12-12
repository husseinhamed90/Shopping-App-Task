import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../Controllers/MealsController.dart';
import '../../../Models/Deal.dart';
import 'DealCard.dart';
import 'FavouriteIcon.dart';

class DealItem extends StatelessWidget {
  final Deal currentDeal;
  DealItem({
    Key? key,
    required this.currentDeal,
  }) : super(key: key);
  final mealsController = Get.find<MealsController>();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: 243.w,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          DealCard(currentDeal: currentDeal),
          FavouriteIcon(currentDeal: currentDeal)
        ],
      ),
    );
  }
}