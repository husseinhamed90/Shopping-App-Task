import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Models/Deal.dart';

class DealCard extends StatelessWidget {
  const DealCard({
    Key? key,
    required this.currentDeal,
  }) : super(key: key);

  final Deal currentDeal;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(4.w),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(currentDeal.dealImageUrl!)),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          width: 110.0.h,
          height: 110.0.h,
        ),
        SizedBox(width: 10.w,),
        Expanded(child: SizedBox(
          height: 110.0.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex :5,
                    child: AutoSizeText(currentDeal.dealName!,style: TextStyle(
                        color: const Color(0xff474749),fontSize: 11.sp,
                        fontWeight: FontWeight.bold
                    ),maxLines: 1,overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
              SizedBox(height: 5.h,),
              AutoSizeText(currentDeal.dealDescription!,style: TextStyle(
                  color: const Color(0xff474749),fontSize: 9.sp,
                  fontWeight: FontWeight.w400
              ),maxLines: 1,overflow: TextOverflow.ellipsis),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Icon(Icons.location_on_outlined,size: 15.h),
                  SizedBox(width: 3.w,),
                  AutoSizeText(currentDeal.dealLocation!,style: TextStyle(
                      color: const Color(0xff474749),fontSize: 9.sp,
                      fontWeight: FontWeight.normal
                  ),maxLines: 1,overflow: TextOverflow.ellipsis),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text("\$ ${currentDeal.dealPrice}",style: TextStyle(
                      color: const Color(0xffee6a61),fontSize: 13.sp,
                      fontWeight: FontWeight.w900
                  ),maxLines: 2,overflow: TextOverflow.ellipsis),
                  SizedBox(width: 5.w,),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        child: Text("\$ ${currentDeal.originalPrice}",style: TextStyle(
                            color: const Color(0xff464646),fontSize: 13.sp,
                            fontWeight: FontWeight.normal
                        ),maxLines: 2,overflow: TextOverflow.ellipsis),
                      ),
                      Container(height: 0.7.h,width: 30.w,color: const Color(0xffACADAD),)
                    ],
                  ),

                ],
              ),
            ],
          ),
        )
        )
      ],
    );
  }
}