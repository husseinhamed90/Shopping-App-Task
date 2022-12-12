
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controllers/MealsController.dart';

class PageTitle extends StatelessWidget {

  String title;
  PageTitle({
    Key? key,required this.title

  }) : super(key: key);
  final mealsController = Get.find<MealsController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 26.w),
      child:  Text(title,style: TextStyle(
          fontSize: 15.sp,color: const Color(0xff424242),fontWeight: FontWeight.bold
      ),
      ),
    );
  }
}