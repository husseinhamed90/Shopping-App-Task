import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shoppingapp/Controllers/NavBarController.dart';
import 'package:shoppingapp/Views/CartProducts/CartProductsPage.dart';
import 'package:shoppingapp/Views/Grocery/GroceryPage.dart';

import 'Controllers/MealsController.dart';
import 'Views/HomeScreen/HomeScreenPage.dart';

void main() {
  runApp(const MyApp());
}
class StoreBinding implements Bindings {
  @override
  void dependencies() {
     Get.put(NavBarController(),permanent: true);
     Get.put(MealsController(),permanent: true);
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 790),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          initialRoute: '/',
          getPages: [
            GetPage(
              name: '/',
              page: () => HomeScreenPage(),
              binding:  StoreBinding()
            ),
            GetPage(
              name: '/Grocery',
              page: () => GroceryPage(),
                binding:  StoreBinding()
            ),
            GetPage(
              name: '/CartProducts',
              page: () => CartProductsPage(),
            ),
            // GetPage(
            //   name: '/details',
            //   page: () => DetailsView(),
            //   binding: DetailsBinding(),
            // ),
          ],
          debugShowCheckedModeBanner: false,
          home:  child,
        );
      },

    );
  }
}