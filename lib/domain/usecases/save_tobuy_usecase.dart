import '../entities/entity.dart';
import '../repositories/repository.dart';
import 'base_usecase.dart';

class SaveToBuyUseCase implements BaseUseCase<bool, List<BuyEntity>> {
  final Repository repository;

  SaveToBuyUseCase({required this.repository});

  @override
  Future<bool> call(List<BuyEntity> params) async {
    return await repository.saveToBuy(params);
  }
}
