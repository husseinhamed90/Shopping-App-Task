import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/Controllers/MealsController.dart';
import 'package:shoppingapp/Controllers/NavBarController.dart';
import '../../Core/Shared.dart';
import '../CartProducts/CartProductsPage.dart';
import '../Favourites/FavouritesPage.dart';
import '../Grocery/GroceryPage.dart';

class HomeScreenPage extends StatelessWidget {
   HomeScreenPage({Key? key}) : super(key: key);
   final navBarController = Get.find<NavBarController>();
   final mealController = Get.find<MealsController>();
   List<Widget> pages= [
     GroceryPage(),
     CartProductsPage(),
     FavouritesPage(),
     CartProductsPage()
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildCustomAppbar(),
      body: Obx(() => pages[navBarController.currentIndex.value]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: navBarController.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFFF4F9FA),
          selectedItemColor: const Color(0xffD93E11),
          unselectedItemColor: const Color(0xffA6A7A7),
          selectedFontSize: 7.sp,
          unselectedFontSize: 7.sp,
          onTap: (value) => navBarController.changePage(value),
          items: const [
            BottomNavigationBarItem(
              label: 'Grocery',
              icon: Icon(Icons.local_grocery_store,size: 25),
            ),
            BottomNavigationBarItem(
              label: 'News',
              icon: Icon(Icons.notifications_none,size: 25),
            ),
            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(Icons.favorite_outline,size: 25),
            ),
            BottomNavigationBarItem(
              label: 'Card',
              icon: Icon(Icons.credit_card_rounded,size: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: const Color(0xffD93E11), onPressed: () {}, child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Text("\$ ${mealController.totalPrice.value}",style: TextStyle(
                color: const Color(0xffFCEEEA),fontSize: 11.sp,
                fontWeight: FontWeight.normal
            ),maxLines: 2,overflow: TextOverflow.ellipsis),
          ),
          const Icon(Icons.shopping_cart_outlined)
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

