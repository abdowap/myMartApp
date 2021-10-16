import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
class Types{
  @JsonProperty(name: 'id')
  final int id;
  @JsonProperty(name: 'name')
  final String name;

  Types(this.id, this.name);
}