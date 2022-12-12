import 'package:shoppingapp/Models/Meal.dart';

class Offer {
  String? offerId;
  Meal? offerMeal;
  String? offerName;
  String? newPrice;
  String? oldPrice;
  String? availableUntil;

  Offer(
      {this.offerId,
        this.offerMeal,
        this.offerName,
        this.newPrice,
        this.oldPrice,
        this.availableUntil});

  Offer.fromJson(Map<String, dynamic> json) {
    offerId = json['offerId'];
    offerMeal = json['offerMeal'] != null
        ? Meal.fromJson(json['offerMeal'])
        : null;
    offerName = json['offerName'];
    newPrice = json['newPrice'];
    oldPrice = json['oldPrice'];
    availableUntil = json['availableUntil'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['offerId'] = offerId;
    if (offerMeal != null) {
      data['offerMeal'] = offerMeal!.toJson();
    }
    data['offerName'] = offerName;
    data['newPrice'] = newPrice;
    data['oldPrice'] = oldPrice;
    data['availableUntil'] = availableUntil;
    return data;
  }
}