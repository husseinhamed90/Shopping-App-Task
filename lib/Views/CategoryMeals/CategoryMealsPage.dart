import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/Core/Shared.dart';
import 'package:shoppingapp/Models/Category.dart';

import '../../Controllers/MealsController.dart';
import '../../Models/Meal.dart';

class CategoryMeals extends StatelessWidget {
  final Category category;
  CategoryMeals({Key? key,required this.category}) : super(key: key);
  final mealsController = Get.find<MealsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildCustomAppbar(),
        backgroundColor: const Color(0xffF5F7F9),
        body: FutureBuilder<List<Meal>>(
          future: mealsController.fetchMealsOfCategory(int.parse(category.categoryId)),
          builder: (context, AsyncSnapshot<List<Meal>>meals) {
            if(meals.hasData){
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                      child: SizedBox(height: 45.h,)
                  ),
                  SliverToBoxAdapter(
                    child:  Container(
                      margin: EdgeInsets.symmetric(horizontal: 26.w),
                      child: Text("Meals Of Category ${category.categoryName} (${meals.data!.length})",style: TextStyle(
                          fontSize: 15.sp,color: const Color(0xff424242),fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: SizedBox(height: 33.h,)
                  ),
                  SliverFixedExtentList(
                    itemExtent: 100.h,
                    delegate: SliverChildBuilderDelegate((context, index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          Obx(
                           () => Row(
                              children: [
                                BuildMealImageFromUrl(currentMeal: meals.data![index]),
                                SizedBox(width: 20.w,),
                                BuildMealInfo(currentMeal: meals.data![index]),
                                const Spacer(),
                                if (mealsController.cartMealsWithQuantities.containsKey(meals.data![index].mealId.toString())) Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        mealsController.decrementMealQuantity(meals.data![index]);
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xffb0eafd),
                                          borderRadius: BorderRadius.all(Radius.circular(7)),
                                        ),
                                        width: 37.0.h,
                                        height: 37.0.h,
                                        child: const Icon(Icons.remove,color: Color(0xff48b6da)),
                                      ),
                                    ),
                                    SizedBox(width: 12.w,),
                                    Text( mealsController.cartMealsWithQuantities[meals.data![index].mealId].toString(),style: TextStyle(
                                        fontSize: 19.sp,color: const Color(0xff424242),fontWeight: FontWeight.bold
                                    )),
                                    SizedBox(width: 12.w,),
                                    GestureDetector(
                                      onTap: () {
                                        mealsController.incrementMealQuantity(meals.data![index]);
                                      },
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Color(0xffb0eafd),
                                          // image: DecorationImage(
                                          //     fit: BoxFit.cover, image: NetworkImage('https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-pro-model-unselect-gallery-2-202209_GEO_EMEA?wid=5120&hei=2880&fmt=p-jpg&qlt=80&.v=1660753617539')),
                                          borderRadius: BorderRadius.all(Radius.circular(7)),
                                        ),
                                        width: 37.0.h,
                                        height: 37.0.h,
                                        child: const Icon(Icons.add,color: Color(0xff48b6da)),
                                      ),
                                    ),
                                  ],
                                )
                                else IconButton(onPressed: () {
                                  mealsController.addMealToCart(meals.data![index]);
                                },icon: const Icon(Icons.shopping_cart_outlined)),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h,),
                        ],
                      ),
                    ),
                      childCount: meals.data!.length,
                    ),
                  )
                ],
              );
            }
            else{
              return const Center(child: CircularProgressIndicator(color: Colors.red,));
            }
          },
        )
    );
  }
}
