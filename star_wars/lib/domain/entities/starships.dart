import 'package:equatable/equatable.dart';

class Starships extends Equatable {
  Starships({
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
