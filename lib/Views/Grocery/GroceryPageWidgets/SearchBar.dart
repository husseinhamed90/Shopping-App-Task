import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.w),
      height: 45.h,
      child: TextField(
        style: TextStyle(
            fontSize: 11.sp,
            color: const Color(0xff474749)
        ),
        decoration: InputDecoration(
            fillColor: const Color(0xfff5f7f9),
            filled: true,
            focusedBorder: const OutlineInputBorder(

              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xffE0E0E0), width: 1),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Color(0xffE0E0E0), width: 1),
            ),
            prefixIcon: Icon(Icons.search_outlined,color: const Color(0xff444444),size: 28.h),
            hintText: 'Search in thousands of products',
            contentPadding: EdgeInsets.zero
        ),
      ),
    );
  }
}