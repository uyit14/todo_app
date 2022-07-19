class CallModel {
  int? id;
  String? name;
  String? number;

  CallModel({this.id, this.name, this.number});

  CallModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    number = json['number'];
  }
}
