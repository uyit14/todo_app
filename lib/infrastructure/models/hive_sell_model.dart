import 'package:hive/hive.dart';
part 'hive_sell_model.g.dart';

@HiveType(typeId: 0)
class HiveSellModel {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  int price;
  @HiveField(3)
  int quantity;
  @HiveField(4)
  int type;

  HiveSellModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity,
      required this.type});
}
