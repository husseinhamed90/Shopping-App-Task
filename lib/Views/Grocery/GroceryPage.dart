import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/Views/Grocery/GroceryPageWidgets/ListOfDeals.dart';
import '../../Controllers/MealsController.dart';
import 'GroceryPageWidgets/Addresses.dart';
import 'GroceryPageWidgets/DealsSectionTitle.dart';
import 'GroceryPageWidgets/ListOfCategories.dart';
import 'GroceryPageWidgets/OfferBanner.dart';
import 'GroceryPageWidgets/RowOfCategoriesTitle.dart';
import 'GroceryPageWidgets/SearchBar.dart';

class GroceryPage extends StatelessWidget {
  GroceryPage({
    Key? key,
  }) : super(key: key);
  final mealsController = Get.find<MealsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF5F7F9),
      child: FutureBuilder(
        future: mealsController.fetchData(),
        builder: (context, snapshot) {
          if(mealsController.deals!=null&&mealsController.categories!=null){
            return ListView(
              children: [
                SizedBox(height: 15.h,),
                const SearchBar(),
                SizedBox(height: 25.h,),
                const Addresses(),
                SizedBox(height: 25.h,),
                const RowOfCategoriesTitle(),
                SizedBox(height: 13.h,),
                ListOfCategories(),
                SizedBox(height: 35.h,),
                const DealsSectionTitle(),
                SizedBox(height: 13.h,),
                ListOfDeals(),
                SizedBox(height: 20.h,),
                OfferBanner(),
                SizedBox(height: 25.h,),
              ],
            );
          }
          else{
            return const Center(child: CircularProgressIndicator(color: Colors.red,));
          }
        }
      ),
    );
  }


}









