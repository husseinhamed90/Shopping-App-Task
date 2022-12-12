import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Controllers/MealsController.dart';
import 'CartProductsWidgets/CartProductsTitle.dart';
import 'CartProductsWidgets/ListOfCartProducts.dart';

class CartProductsPage extends StatelessWidget {
  CartProductsPage({Key? key}) : super(key: key);
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
            child: Obx(() => PageTitle(title: "Cart (${mealsController.cartProducts.length})")),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 33.h,)
          ),
          ListOfCartProducts()
        ],
      )
    );
  }
}

