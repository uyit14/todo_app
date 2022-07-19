import '../../domain/entities/entity.dart';
import '../../infrastructure/models/model.dart';

class Mapper {
  static CallEntity toCallEntity(CallModel callModel) {
    return CallEntity(
        id: callModel.id!, name: callModel.name!, number: callModel.number!);
  }

  static toCallEntityList(List<CallModel> callModels) {
    List<CallEntity> callEntities = [];
    for (var callModel in callModels) {
      callEntities.add(toCallEntity(callModel));
    }
  }

  static BuyEntity toBuyEntity(BuyModel buyModel) {
    return BuyEntity(
        id: buyModel.id!,
        name: buyModel.name!,
        price: buyModel.price!,
        quantity: buyModel.quantity!,
        type: buyModel.type!);
  }

  static toBuyEntityList(List<BuyModel> buyModels) {
    List<BuyEntity> buyEntities = [];
    for (var buyModel in buyModels) {
      buyEntities.add(toBuyEntity(buyModel));
    }
  }
}
