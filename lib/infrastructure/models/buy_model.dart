class BuyModel {
  int? id;
  String? name;
  int? price;
  int? quantity;
  int? type;

  BuyModel({this.id, this.name, this.price, this.quantity, this.type});

  BuyModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    quantity = json['quantity'];
    type = json['type'];
  }
}
