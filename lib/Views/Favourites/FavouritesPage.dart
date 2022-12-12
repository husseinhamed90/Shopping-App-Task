import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Controllers/MealsController.dart';
import '../CartProducts/CartProductsWidgets/CartProductsTitle.dart';
import '../CartProducts/CartProductsWidgets/ListOfCartProducts.dart';
import 'FavouritesPageWidgets/ListOfFavourites.dart';

class FavouritesPage extends StatelessWidget {
  FavouritesPage({Key? key}) : super(key: key);
  final mealsController = Get.find<MealsController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF5F7F9),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: SizedBox(height: 45.h,)
            ),
            SliverToBoxAdapter(
              child: PageTitle(title: "Favourites"),
            ),
            SliverToBoxAdapter(
                child: SizedBox(height: 33.h,)
            ),
            ListOfFavourites()
          ],
        )
    );
  }
}
