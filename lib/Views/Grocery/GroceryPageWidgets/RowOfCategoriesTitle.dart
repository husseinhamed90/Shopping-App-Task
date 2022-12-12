import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowOfCategoriesTitle extends StatelessWidget {
  const RowOfCategoriesTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),

      child: Row(
        children: [
          Text("Explore by Category",style: TextStyle(
              fontSize: 11.sp,color: const Color(0xff474749),fontWeight: FontWeight.bold
          ),),
          const Spacer(),
          Text("See All (36)",style: TextStyle(
              fontSize: 9.sp,color: const Color(0xff929294),fontWeight: FontWeight.w500
          ),),
        ],
      ),
    );
  }
}