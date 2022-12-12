List<Map<String,dynamic>> jsonOfCategories = [
  {
    "catId":"1",
    "catName":"steak",
    "catImageUrl":"https://cdn-icons-png.flaticon.com/512/4829/4829131.png"
  },
  {
    "catId":"2",
    "catName":"Vegetables",
    "catImageUrl":"https://cdn-icons-png.flaticon.com/512/2153/2153786.png"
  },
  {
    "catId":"3",
    "catName":"Beverages",
    "catImageUrl":"https://cdn-icons-png.flaticon.com/512/3655/3655682.png"
  },
  {
    "catId":"4",
    "catName":"Fish",
    "catImageUrl":"https://cdn-icons-png.flaticon.com/512/783/783043.png"
  },
  {
    "catId":"5",
    "catName":"Juice",
    "catImageUrl":"https://cdn-icons-png.flaticon.com/512/2442/2442019.png"
  }
];

List<Map<String,dynamic>> jsonOfMeals = [
  {
    "mealId":"1",
    "categoryId" :"1",
    "mealName":"Turkish Steak",
    "mealDescription":"173 Grams",
    "mealImageUrl":"https://cdn-icons-png.flaticon.com/512/4829/4829131.png",
    "mealPrice":"25"
  },
  {
    "mealId":"2",
    "categoryId" :"4",
    "mealName":"Salmon",
    "mealDescription":"2 Serving",
    "mealImageUrl":"https://cdn-icons-png.flaticon.com/512/2153/2153786.png",
    "mealPrice":"30"
  },
  {
    "mealId":"4",
    "categoryId" :"5",
    "mealName":"Red Juice",
    "mealDescription":"1 Bottle",
    "mealImageUrl":"https://cdn-icons-png.flaticon.com/512/783/783043.png",
    "mealPrice":"25"
  },
  {
    "mealId":"3",
    "categoryId" :"5",
    "mealName":"Cola",
    "mealDescription":"1 Bottle",
    "mealImageUrl":"https://cdn-icons-png.flaticon.com/512/3655/3655682.png",
    "mealPrice":"11"
  },
  {
    "mealId":"5",
    "categoryId" :"3",
    "mealName":"Summer Sun Ice Cream Pack",
    "mealDescription":"1 Scoop",
    "mealImageUrl":"https://static.toiimg.com/photo/84917454.cms",
    "mealPrice":"4"
  },
  {
    "mealId":"6",
    "categoryId" :"3",
    "mealName":"Burger Whopper",
    "mealDescription":"Burger Whopper With French Fries And Cola",
    "mealImageUrl": "https://www.transparentpng.com/thumb/burger/hot-burger-king-hd-png-9dzyCE.png",
    "mealPrice":"20"
  },

];

List<Map<String,dynamic>>jsonOfDeals = [
  {
    "dealId":"1",
    "dealName":"Summer Sun Ice Cream Pack",
    "dealMeal" :{
      "mealId":"5",
      "categoryId" :"3",
      "mealName":"Summer Sun Ice Cream Pack",
      "mealDescription":"1 Scoop",
      "mealImageUrl":"https://static.toiimg.com/photo/84917454.cms",
      "mealPrice":"4"
    },
    "dealDescription":"Pieces 5",
    "dealImageUrl":"https://static.toiimg.com/photo/84917454.cms",
    "dealLocation":"15 Minutes Away",
    "dealPrice":"10",
    "OriginalPrice":"20"
  },
  {
    "dealId":"1",
    "dealName":"Burger Whopper",
    "dealMeal" :{
      "mealId":"6",
      "categoryId" :"1",
      "mealName":"Burger Whopper",
      "mealDescription":"Burger Whopper With French Fries And Cola",
      "mealImageUrl": "https://www.transparentpng.com/thumb/burger/hot-burger-king-hd-png-9dzyCE.png",
      "mealPrice":"20"
    },
    "dealDescription":"Big Mac With Cola",
    "dealImageUrl":"https://www.transparentpng.com/thumb/burger/hot-burger-king-hd-png-9dzyCE.png",
    "dealLocation":"15 Minutes Away",
    "dealPrice":"10",
    "OriginalPrice":"20"
  },
];

List<Map<String,dynamic>>jsonOfOffers = [
  {
    "offerId": "1",
    "offerMeal" :{
      "mealId":"6",
      "categoryId" :"1",
      "mealName":"Burger Whopper",
      "mealDescription":"Burger Whopper With French Fries And Cola",
      "mealImageUrl": "https://www.transparentpng.com/thumb/burger/hot-burger-king-hd-png-9dzyCE.png",
      "mealPrice":"20"
    },
    "offerName": "firstOffer",
    "newPrice": "10",
    "oldPrice": "20",
    "availableUntil": "22 december 2022"
  },
];