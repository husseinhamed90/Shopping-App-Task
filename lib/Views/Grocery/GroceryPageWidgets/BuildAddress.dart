import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildAddress extends StatelessWidget {
  const BuildAddress({
    Key? key,required this.title,required this.image,required this.subTitle
  }) : super(key: key);

  final String title,subTitle,image;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
              width: 0.5.w,
              color: Colors.grey.shade300
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        height: 50.h,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(4.w),
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(image)),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              width: 35.0.h,
              height: 35.0.h,
            ),
            SizedBox(width: 5.w,),
            Expanded(child: Container(
              height: 55.0.h,
              margin: EdgeInsets.only(bottom: 5.h,top: 5.h,right: 4.w),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(title,style: TextStyle(
                        color: const Color(0xff474749),fontSize: 11.sp,
                        fontWeight: FontWeight.bold
                    ),maxLines: 1,overflow: TextOverflow.ellipsis),
                  ),
                  Expanded(
                    child: Text(subTitle,style: TextStyle(
                        color: const Color(0xff474749),fontSize: 9.sp,
                        fontWeight: FontWeight.w400
                    ),maxLines: 2,overflow: TextOverflow.ellipsis),
                  )
                ],
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}