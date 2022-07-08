import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:star_wars/domain/entities/vehicles.dart';

VehiclesModel vehiclesModelFromJson(String str) => VehiclesModel.fromJson(json.decode(str));

String vehiclesModelToJson(VehiclesModel data) => json.encode(data.toJson());

class VehiclesModel extends Equatable {
  VehiclesModel({
    required this.name,
    required this.model,
    required this.manufacturer,
    required this.costInCredits,
    required this.length,
    required this.maxAtmospheringSpeed,
    required this.crew,
    required this.passengers,
    required this.cargoCapacity,
    required this.consumables,
    required this.vehicleClass,
    required this.pilots,
    required this.films,
    required this.created,
    required this.edited,
    required this.url,
  });

  String name;
  String model;
  String manufacturer;
  String costInCredits;
  String length;
  String maxAtmospheringSpeed;
  String crew;
  String passengers;
  String cargoCapacity;
  String consumables;
  String vehicleClass;
  List<String> pilots;
  List<String> films;
  DateTime created;
  DateTime edited;
  String url;

  factory VehiclesModel.fromJson(Map<String, dynamic> json) => VehiclesModel(
    name: json["name"],
    model: json["model"],
    manufacturer: json["manufacturer"],
    costInCredits: json["cost_in_credits"],
    length: json["length"],
    maxAtmospheringSpeed: json["max_atmosphering_speed"],
    crew: json["crew"],
    passengers: json["passengers"],
    cargoCapacity: json["cargo_capacity"],
    consumables: json["consumables"],
    vehicleClass: json["vehicle_class"],
    pilots: List<String>.from(json["pilots"].map((x) => x)),
    films: List<String>.from(json["films"].map((x) => x)),
    created: DateTime.parse(json["created"]),
    edited: DateTime.parse(json["edited"]),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "model": model,
    "manufacturer": manufacturer,
    "cost_in_credits": costInCredits,
    "length": length,
    "max_atmosphering_speed": maxAtmospheringSpeed,
    "crew": crew,
    "passengers": passengers,
    "cargo_capacity": cargoCapacity,
    "consumables": consumables,
    "vehicle_class": vehicleClass,
    "pilots": List<dynamic>.from(pilots.map((x) => x)),
    "films": List<dynamic>.from(films.map((x) => x)),
    "created": created.toIso8601String(),
    "edited": edited.toIso8601String(),
    "url": url,
  };

  Vehicles toEntity() {
    return Vehicles(
      name: name,
      model: model,
      manufacturer: manufacturer,
      costInCredits: costInCredits,
      length: length,
      maxAtmospheringSpeed: maxAtmospheringSpeed,
      crew: crew, passengers: passengers,
      cargoCapacity: cargoCapacity,
      consumables: consumables,
      vehicleClass: vehicleClass,
      pilots: pilots,
      films: films,
      created: created,
      edited: edited,
      url: url
    );
  }

  @override
  List<Object?> get props => [
    name,
    model,
    manufacturer,
    costInCredits,
    length,
    maxAtmospheringSpeed,
    crew,
    passengers,
    cargoCapacity,
    consumables,
    vehicleClass,
    pilots,
    films,
    created,
    edited,
    url,
  ];
}
