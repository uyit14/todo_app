// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_sell_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveSellModelAdapter extends TypeAdapter<HiveSellModel> {
  @override
  final int typeId = 0;

  @override
  HiveSellModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveSellModel(
      id: fields[0] as int,
      name: fields[1] as String,
      price: fields[2] as int,
      quantity: fields[3] as int,
      type: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveSellModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.quantity)
      ..writeByte(4)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveSellModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
