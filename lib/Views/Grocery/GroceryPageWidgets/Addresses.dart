import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'BuildAddress.dart';

class Addresses extends StatelessWidget {
  const Addresses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        children: [
          const BuildAddress(
            image: "https://cdn-icons-png.flaticon.com/512/5450/5450743.png",
            title: "Home Address",
            subTitle: "Mustafa St. No:2 Street x12",
          ),
          SizedBox(width: 12.w,),
          const BuildAddress(
            image: "https://img.icons8.com/ios-filled/512/office.png",
            title: "Office Address",
            subTitle: "Axis Istanbul, B2 Blok Floor 2, Office 11",
          ),
        ],
      ),
    );
  }
}