class BuyModel {
  late int id;
  late String name;
  late int price;
  late int quantity;
  late int type;

  BuyModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity,
      required this.type});

  BuyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
    type = json['type'];
  }
}
