class Category {
  String categoryId="";
  String categoryName="";
  String categoryImageUrl="";

  Category({required this.categoryId, required this.categoryName, required this.categoryImageUrl});

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['catId'];
    categoryName = json['catName'];
    categoryImageUrl = json['catImageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['catId'] = categoryId;
    data['catName'] = categoryName;
    data['catImageUrl'] = categoryImageUrl;
    return data;
  }
}