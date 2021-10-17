// To parse this JSON data, do
//
//     final items = itemsFromJson(jsonString);

import 'dart:convert';

List<Items> itemsFromJson(String str) => List<Items>.from(json.decode(str).map((x) => Items.fromJson(x)));

String itemsToJson(List<Items> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Items {
    Items({
        this.id,
        this.name,
        this.price,
        this.unitId,
        this.typeId,
        this.types,
        this.units,
        this.rating,
    });

    final int? id;
    final String? name;
    final double? price;
    final int? unitId;
    final int? typeId;
    final Types? types;
    final Types? units;
    final int? rating;

    factory Items.fromJson(Map<String, dynamic> json) => Items(
        id: json["id"],
        name: json["name"],
        price: json["price"].toDouble(),
        unitId: json["unit_id"],
        typeId: json["type_id"],
        types: Types.fromJson(json["types"]),
        units: Types.fromJson(json["units"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "unit_id": unitId,
        "type_id": typeId,
        "types": types?.toJson(),
        "units": units?.toJson(),
    };
}

class Types {
    Types({
        this.id,
        this.name,
    });

    final int? id;
    final String? name;

    factory Types.fromJson(Map<String, dynamic> json) => Types(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
