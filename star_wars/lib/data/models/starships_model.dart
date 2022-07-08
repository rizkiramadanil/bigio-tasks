import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:star_wars/domain/entities/starships.dart';

StarshipsModel starshipsModelFromJson(String str) => StarshipsModel.fromJson(json.decode(str));

String starshipsModelToJson(StarshipsModel data) => json.encode(data.toJson());

class StarshipsModel extends Equatable {
  StarshipsModel({
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
    required this.hyperdriveRating,
    required this.mglt,
    required this.starshipClass,
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
  String hyperdriveRating;
  String mglt;
  String starshipClass;
  List<String> pilots;
  List<String> films;
  DateTime created;
  DateTime edited;
  String url;

  factory StarshipsModel.fromJson(Map<String, dynamic> json) => StarshipsModel(
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
    hyperdriveRating: json["hyperdrive_rating"],
    mglt: json["MGLT"],
    starshipClass: json["starship_class"],
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
    "hyperdrive_rating": hyperdriveRating,
    "MGLT": mglt,
    "starship_class": starshipClass,
    "pilots": List<dynamic>.from(pilots.map((x) => x)),
    "films": List<dynamic>.from(films.map((x) => x)),
    "created": created.toIso8601String(),
    "edited": edited.toIso8601String(),
    "url": url,
  };

  Starships toEntity() {
    return Starships(
        name: name,
        model: model,
        manufacturer: manufacturer,
        costInCredits: costInCredits,
        length: length,
        maxAtmospheringSpeed: maxAtmospheringSpeed,
        crew: crew,
        passengers: passengers,
        cargoCapacity: cargoCapacity,
        consumables: consumables,
        hyperdriveRating: hyperdriveRating,
        mglt: mglt,
        starshipClass: starshipClass,
        pilots: pilots, films: films,
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
    hyperdriveRating,
    mglt,
    starshipClass,
    pilots,
    films,
    created,
    edited,
    url,
  ];
}
