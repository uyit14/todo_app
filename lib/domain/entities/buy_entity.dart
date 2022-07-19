class BuyEntity {
  final int id;
  final String name;
  final int price;
  final int quantity;
  int type;

  BuyEntity(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity,
      required this.type});
}
