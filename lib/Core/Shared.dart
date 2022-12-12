import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Models/Meal.dart';


class BuildMealInfo extends StatelessWidget {
  const BuildMealInfo({
    Key? key,
    required this.currentMeal,
  }) : super(key: key);

  final Meal currentMeal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(currentMeal.mealName!,style: TextStyle(
            fontSize: 12.sp,color: const Color(0xff2b3d54),fontWeight: FontWeight.w500
        )),
        SizedBox(height: 10.h,),
        Text(currentMeal.mealDescription!,style: TextStyle(
            fontSize: 9.sp,color: const Color(0xff8d97a4),fontWeight: FontWeight.w500
        )),
        SizedBox(height: 8.h,),
        Text("\$ ${currentMeal.mealPrice}",style: TextStyle(
            fontSize: 18.sp,color: const Color(0xffb13e55),fontWeight: FontWeight.w500
        )),
      ],
    );
  }
}

class BuildMealImageFromUrl extends StatelessWidget {
  const BuildMealImageFromUrl({
    Key? key,
    required this.currentMeal,
  }) : super(key: key);

  final Meal currentMeal;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: NetworkImage(currentMeal.mealImageUrl!)),
        borderRadius: const BorderRadius.all(Radius.circular(14)),
      ),
      width: 66.0.h,
      height: 66.0.h,
    );
  }
}

Color getFavouriteIconColor(String mealId,Map map) => isMealInFavourites(mealId,map)? Colors.red:const Color(0xffD8D8D8);

IconData getFavouriteIcon(String mealId,Map map) => isMealInFavourites(mealId,map)? Icons.favorite_rounded:Icons.favorite_outline;

bool isMealInFavourites(String mealId,Map map) => map.containsKey(mealId);
class MyOwnClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path =Path();
    path.lineTo(0, 44.h);
    path.quadraticBezierTo(112,  44, 110, 18);
    path.quadraticBezierTo(80,0, 80, 2);
    path.lineTo(75, 1);
    path.lineTo(80, 2.2);
    path.quadraticBezierTo(85,0, 10, 0);
     return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
AppBar buildCustomAppbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: const Color(0xffF5F7F9) ,
    elevation: 0,
    title: SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          ClipPath(
            clipper: MyOwnClipper(),
            child: Container(
              height: 33.h,
              width: 100.w,
              decoration: const BoxDecoration(
                color: Color(0xffee6a61),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),

                  // bottomRight: Radius.circular(1),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 4.w,),
                  const Icon(Icons.location_on_outlined,size: 17),
                  SizedBox(width: 2.w,),
                  Text("Mustafa St.",style: TextStyle(
                      color: Colors.white,fontSize: 11.sp,fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            ),
          ),
          const Spacer(),
          const CircleAvatar(
            radius: 22, // Image radius
            backgroundImage: NetworkImage('https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
          )
        ],
      ),
    ),
  );
}
