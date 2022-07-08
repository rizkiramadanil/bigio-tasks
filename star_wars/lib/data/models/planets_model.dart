import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:star_wars/domain/entities/planets.dart';

PlanetsModel planetsModelFromJson(String str) => PlanetsModel.fromJson(json.decode(str));

String planetsModelToJson(PlanetsModel data) => json.encode(data.toJson());

class PlanetsModel extends Equatable {
  PlanetsModel({
    required this.name,
    required this.rotationPeriod,
    required this.orbitalPeriod,
    required this.diameter,
    required this.climate,
    required this.gravity,
    required this.terrain,
    required this.surfaceWater,
    required this.population,
    required this.residents,
    required this.films,
    required this.created,
    required this.edited,
    required this.url,
  });

  String name;
  String rotationPeriod;
  String orbitalPeriod;
  String diameter;
  String climate;
  String gravity;
  String terrain;
  String surfaceWater;
  String population;
  List<String> residents;
  List<String> films;
  DateTime created;
  DateTime edited;
  String url;

  factory PlanetsModel.fromJson(Map<String, dynamic> json) => PlanetsModel(
    name: json["name"],
    rotationPeriod: json["rotation_period"],
    orbitalPeriod: json["orbital_period"],
    diameter: json["diameter"],
    climate: json["climate"],
    gravity: json["gravity"],
    terrain: json["terrain"],
    surfaceWater: json["surface_water"],
    population: json["population"],
    residents: List<String>.from(json["residents"].map((x) => x)),
    films: List<String>.from(json["films"].map((x) => x)),
    created: DateTime.parse(json["created"]),
    edited: DateTime.parse(json["edited"]),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "rotation_period": rotationPeriod,
    "orbital_period": orbitalPeriod,
    "diameter": diameter,
    "climate": climate,
    "gravity": gravity,
    "terrain": terrain,
    "surface_water": surfaceWater,
    "population": population,
    "residents": List<dynamic>.from(residents.map((x) => x)),
    "films": List<dynamic>.from(films.map((x) => x)),
    "created": created.toIso8601String(),
    "edited": edited.toIso8601String(),
    "url": url,
  };

  Planets toEntity() {
    return Planets(
      name: name,
      rotationPeriod: rotationPeriod,
      orbitalPeriod: orbitalPeriod,
      diameter: diameter,
      climate: climate,
      gravity: gravity,
      terrain: terrain,
      surfaceWater: surfaceWater,
      population: population,
      residents: residents,
      films: films,
      created: created,
      edited: edited,
      url: url
    );
  }

  @override
  List<Object?> get props => [
    name,
    rotationPeriod,
    orbitalPeriod,
    diameter,
    climate,
    gravity,
    terrain,
    surfaceWater,
    population,
    residents,
    films,
    created,
    edited,
    url,
  ];
}
