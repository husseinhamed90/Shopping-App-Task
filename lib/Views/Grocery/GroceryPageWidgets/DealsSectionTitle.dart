import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DealsSectionTitle extends StatelessWidget {
  const DealsSectionTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      child: Text("Deals of the day",style: TextStyle(
          fontSize: 11.sp,color: const Color(0xff474749),fontWeight: FontWeight.bold
      ),),
    );
  }
}