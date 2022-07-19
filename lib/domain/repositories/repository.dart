import '../entities/entity.dart';

abstract class Repository {
  Future<List<CallEntity>> getToCallList();

  Future<List<BuyEntity>> getToBuyList();

  Future<List<BuyEntity>> getToSellList();

  Future<bool> saveToBuy(BuyEntity entity);
}
