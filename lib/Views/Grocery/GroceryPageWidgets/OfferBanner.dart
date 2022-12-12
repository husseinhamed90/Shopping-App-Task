import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Controllers/MealsController.dart';

class OfferBanner extends StatelessWidget {
   OfferBanner({
    Key? key,
  }) : super(key: key);
  final mealsController = Get.find<MealsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 141.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 12.w),
          height: 141.h,
          width: MediaQuery.of(context).size.width-20,
          decoration: const BoxDecoration(
              color: Color(0xffFEC8BD),
              borderRadius: BorderRadius.all(Radius.circular(12))
          ),
          child:  Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(mealsController.offers[index].offerMeal!.mealImageUrl!)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                width: 141.0.h,
                height: 141.0.h,
              ),
              SizedBox(width: 10.w,),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(mealsController.offers[index].offerMeal!.mealName!,style: TextStyle(
                        color: const Color(0xff21114b),
                        fontSize: 31.sp,
                        fontWeight: FontWeight.bold
                      )),
                      SizedBox(height: 15.h,),
                      Row(
                        children: [
                          Text("\$ ${mealsController.offers[index].newPrice}",style: TextStyle(
                              color: const Color(0xffee6a61),fontSize: 20.sp,
                              fontWeight: FontWeight.w900
                          ),maxLines: 2,overflow: TextOverflow.ellipsis),
                          SizedBox(width: 35.w,),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Positioned(
                                child: Text("\$ ${mealsController.offers[index].offerMeal!.mealPrice!}",style: TextStyle(
                                    color: Colors.white,fontSize: 20.sp,
                                    fontWeight: FontWeight.w900
                                ),maxLines: 2,overflow: TextOverflow.ellipsis),
                              ),
                              Container(height: 0.7.h,width: 35.w,color: Colors.white,)
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Expanded(
                        child: AutoSizeText("* Available until ${mealsController.offers[index].availableUntil}",maxLines: 1,style: TextStyle(
                          fontSize: 9.sp,color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),overflow: TextOverflow.clip),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      }, separatorBuilder: (context, index) {
        return SizedBox(width: 15.w,);
      }, itemCount: mealsController.offers.length),
    );
  }
}