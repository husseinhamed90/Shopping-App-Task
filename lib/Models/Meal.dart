class Meal {
  String? mealId;
  String? categoryId;
  String? mealName;
  String? mealDescription;
  String? mealImageUrl;
  String? mealPrice;

  Meal(
      {this.mealId,
        this.categoryId,
        this.mealName,
        this.mealDescription,
        this.mealImageUrl,
        this.mealPrice});

  Meal.fromJson(Map<String, dynamic> json) {
    mealId = json['mealId'];
    categoryId = json['categoryId'];
    mealName = json['mealName'];
    mealDescription = json['mealDescription'];
    mealImageUrl = json['mealImageUrl'];
    mealPrice = json['mealPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mealId'] = mealId;
    data['categoryId'] = categoryId;
    data['mealName'] = mealName;
    data['mealDescription'] = mealDescription;
    data['mealImageUrl'] = mealImageUrl;
    data['mealPrice'] = mealPrice;
    return data;
  }
}