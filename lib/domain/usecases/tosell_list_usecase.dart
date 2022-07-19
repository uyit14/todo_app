import '../entities/entity.dart';
import '../repositories/repository.dart';
import 'base_usecase.dart';

class ToSellListUseCase implements BaseUseCase<List<BuyEntity>, NoParams> {
  final Repository repository;

  ToSellListUseCase({required this.repository});

  @override
  Future<List<BuyEntity>> call(NoParams params) async {
    return await repository.getToSellList();
  }
}
