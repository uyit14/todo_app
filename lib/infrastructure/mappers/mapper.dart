import 'package:todo_app/infrastructure/models/hive_sell_model.dart';

import '../../domain/entities/entity.dart';
import '../../infrastructure/models/model.dart';

class Mapper {
  static CallEntity toCallEntity(CallModel callModel) {
    return CallEntity(
        id: callModel.id!, name: callModel.name!, number: callModel.number!);
  }

  static List<CallEntity> toCallEntityList(List<CallModel> callModels) {
    List<CallEntity> callEntities = [];
    for (var callModel in callModels) {
      callEntities.add(toCallEntity(callModel));
    }
    return callEntities;
  }

  static BuyEntity toBuyEntity(dynamic buyModel) {
    return BuyEntity(
        id: buyModel.id!,
        name: buyModel.name!,
        price: buyModel.price!,
        quantity: buyModel.quantity!,
        type: buyModel.type!);
  }

  static List<BuyEntity> toBuyEntityList(List<dynamic> buyModels) {
    List<BuyEntity> buyEntities = [];
    for (var buyModel in buyModels) {
      buyEntities.add(toBuyEntity(buyModel));
    }
    return buyEntities;
  }

  static HiveSellModel toHiveSellModel(BuyEntity buyEntity) {
    return HiveSellModel(
        id: buyEntity.id,
        name: buyEntity.name,
        price: buyEntity.price,
        quantity: buyEntity.quantity,
        type: buyEntity.type + 1);
  }

  static List<HiveSellModel> toHiveSellsModel(List<BuyEntity> buyEntities) {
    List<HiveSellModel> hiveSellsModel = [];
    for (var buyEntity in buyEntities) {
      hiveSellsModel.add(toHiveSellModel(buyEntity));
    }
    return hiveSellsModel;
  }
}
