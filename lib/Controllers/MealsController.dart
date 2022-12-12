import 'package:get/get.dart';
import 'package:shoppingapp/Models/Deal.dart';
import 'package:shoppingapp/Models/Offer.dart';
import '../DataLayer/DataCenter.dart';
import '../Models/Category.dart';
import '../Models/Meal.dart';

class MealsController extends GetxController{

  List<Meal>meals=[];
  RxList cartProducts=[].obs;
  RxList favourites=[].obs;
  List<Deal>?deals=[];
  List<Offer>offers=[];
  List<Category>?categories;
  RxDouble totalPrice = 0.0.obs;
  RxMap cartMealsWithQuantities ={}.obs;
  RxMap favouriteMealsMap ={}.obs;


  Future fetchData()async{
    await Future.value([await fetchCategories(),await fetchDeals(),await fetchLastOffers()]);
  }

  Future fetchLastOffers()async{
    offers = jsonOfOffers.map((e) => Offer.fromJson(e)).toList();  }


  Future fetchCategories() async{
    categories = jsonOfCategories.map((e) => Category.fromJson(e)).toList();
  }
  Future<List<Meal>> fetchMealsOfCategory(int categoryId) async{
    return jsonOfMeals.where((element) => element["categoryId"]==categoryId.toString()).map((e) => Meal.fromJson(e)).toList();
  }

  Future fetchDeals() async{
    deals = jsonOfDeals.map((e) => Deal.fromJson(e)).toList();
    update();
  }

  void calculateTotalPrice(){
    totalPrice.value=0;
    cartProducts.forEach((element) {
      totalPrice.value+=double.parse(element.mealPrice)* cartMealsWithQuantities[element.mealId.toString()];
    });
  }

  void addMealToCart(Meal meal){
    cartProducts.add(meal);
    cartMealsWithQuantities[meal.mealId.toString()]= 1;
    calculateTotalPrice();
  }
  void removeMealFromCart(Meal meal){
    cartProducts.removeWhere((element) => element.mealId==meal.mealId);
    cartMealsWithQuantities.remove(meal.mealId);
  }

  void addMealToFavourites(Meal meal){
    favourites.add(meal);
    favouriteMealsMap[meal.mealId]=true;
  }
  void removeMealFromFavourites(Meal meal){
    favourites.removeWhere((element) => element.mealId==meal.mealId);
    favouriteMealsMap.remove(meal.mealId);
  }

  void incrementMealQuantity(Meal meal){
    cartMealsWithQuantities[meal.mealId.toString()]+=1;
    calculateTotalPrice();
  }

  void decrementMealQuantity(Meal meal){
    cartMealsWithQuantities[meal.mealId.toString()]-=1;
    if(cartMealsWithQuantities[meal.mealId.toString()]==0){
      removeMealFromCart(meal);
    }
    calculateTotalPrice();
  }
}