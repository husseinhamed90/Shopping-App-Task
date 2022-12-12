import 'package:shoppingapp/Models/Meal.dart';

class Deal {
  String? dealId;
  String? dealName;
  Meal? dealMeal;
  String? dealDescription;
  String? dealImageUrl;
  String? dealLocation;
  String? dealPrice;
  String? originalPrice;

  Deal(
      {this.dealId,
        this.dealName,
        this.dealMeal,
        this.dealDescription,
        this.dealImageUrl,
        this.dealLocation,
        this.dealPrice,
        this.originalPrice});

  Deal.fromJson(Map<String, dynamic> json) {
    dealId = json['dealId'];
    dealName = json['dealName'];
    dealMeal = json['dealMeal'] != null
        ? Meal.fromJson(json['dealMeal'])
        : null;
    dealDescription = json['dealDescription'];
    dealImageUrl = json['dealImageUrl'];
    dealLocation = json['dealLocation'];
    dealPrice = json['dealPrice'];
    originalPrice = json['OriginalPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['dealId'] = dealId;
    data['dealName'] = dealName;
    if (dealMeal != null) {
      data['dealMeal'] = dealMeal!.toJson();
    }
    data['dealDescription'] = dealDescription;
    data['dealImageUrl'] = dealImageUrl;
    data['dealLocation'] = dealLocation;
    data['dealPrice'] = dealPrice;
    data['OriginalPrice'] = originalPrice;
    return data;
  }
}