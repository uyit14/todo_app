import '../entities/entity.dart';
import '../repositories/repository.dart';
import 'base_usecase.dart';

class ToCallListUseCase implements BaseUseCase<List<CallEntity>, NoParams> {
  final Repository repository;

  ToCallListUseCase({required this.repository});

  @override
  Future<List<CallEntity>> call(NoParams params) async {
    return await repository.getToCallList();
  }
}
