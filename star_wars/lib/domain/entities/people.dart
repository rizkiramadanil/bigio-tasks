import 'package:equatable/equatable.dart';

class People extends Equatable {
  People({
    required this.name,
    required this.height,
    required this.mass,
    required this.hairColor,
    required this.skinColor,
    required this.eyeColor,
    required this.birthYear,
    required this.homeworld,
    required this.films,
    required this.species,
    required this.vehicles,
    required this.starships,
    required this.created,
    required this.edited,
    required this.url,
  });

  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String homeworld;
  List<String> films;
  List<String> species;
  List<String> vehicles;
  List<String> starships;
  DateTime created;
  DateTime edited;
  String url;

  @override
  List<Object?> get props => [
    name,
    height,
    mass,
    hairColor,
    skinColor,
    eyeColor,
    birthYear,
    homeworld,
    films,
    species,
    vehicles,
    starships,
    created,
    edited,
    url,
  ];
}
