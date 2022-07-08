import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:star_wars/domain/entities/species.dart';

SpeciesModel speciesModelFromJson(String str) => SpeciesModel.fromJson(json.decode(str));

String speciesModelToJson(SpeciesModel data) => json.encode(data.toJson());

class SpeciesModel extends Equatable {
  SpeciesModel({
    required this.name,
    required this.classification,
    required this.averageHeight,
    required this.skinColors,
    required this.hairColors,
    required this.eyeColors,
    required this.averageLifespan,
    required this.language,
    required this.people,
    required this.films,
    required this.created,
    required this.edited,
    required this.url,
  });

  String name;
  String classification;
  String averageHeight;
  String skinColors;
  String hairColors;
  String eyeColors;
  String averageLifespan;
  String language;
  List<String> people;
  List<String> films;
  DateTime created;
  DateTime edited;
  String url;

  factory SpeciesModel.fromJson(Map<String, dynamic> json) => SpeciesModel(
    name: json["name"],
    classification: json["classification"],
    averageHeight: json["average_height"],
    skinColors: json["skin_colors"],
    hairColors: json["hair_colors"],
    eyeColors: json["eye_colors"],
    averageLifespan: json["average_lifespan"],
    language: json["language"],
    people: List<String>.from(json["people"].map((x) => x)),
    films: List<String>.from(json["films"].map((x) => x)),
    created: DateTime.parse(json["created"]),
    edited: DateTime.parse(json["edited"]),
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "classification": classification,
    "average_height": averageHeight,
    "skin_colors": skinColors,
    "hair_colors": hairColors,
    "eye_colors": eyeColors,
    "average_lifespan": averageLifespan,
    "language": language,
    "people": List<dynamic>.from(people.map((x) => x)),
    "films": List<dynamic>.from(films.map((x) => x)),
    "created": created.toIso8601String(),
    "edited": edited.toIso8601String(),
    "url": url,
  };

  Species toEntity() {
    return Species(
      name: name,
      classification: classification,
      averageHeight: averageHeight,
      skinColors: skinColors,
      hairColors: hairColors,
      eyeColors: eyeColors,
      averageLifespan: averageLifespan,
      language: language,
      people: people,
      films: films,
      created: created,
      edited: edited,
      url: url
    );
  }

  @override
  List<Object?> get props => [
    name,
    classification,
    averageHeight,
    skinColors,
    hairColors,
    eyeColors,
    averageLifespan,
    language,
    people,
    films,
    created,
    edited,
    url,
  ];
}
