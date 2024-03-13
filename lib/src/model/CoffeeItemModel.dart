class CoffeeItemModel {
  String itemName;
  String itemCategory;
  String itemPrice;
  bool isNewLaunched;

  CoffeeItemModel({
    required this.itemName,
    required this.itemCategory,
    required this.itemPrice,
    required this.isNewLaunched,
  });

  factory CoffeeItemModel.fromJson(Map<String, dynamic> json) {
    return CoffeeItemModel(
      itemName: json['itemName'],
      itemCategory: json['itemCategory'],
      itemPrice: json['itemPrice'],
      isNewLaunched: json['isNewLaunched'],
    );
  }
}
