import 'package:todo_app/presentation/home/home.dart';

extension TodoTypeX on TODO_TYPE {
  String toTitle() {
    switch (this) {
      case TODO_TYPE.call:
        return "To Call";
      case TODO_TYPE.buy:
        return "To Buy";
      case TODO_TYPE.sell:
        return "To Sell";
    }
  }
}
