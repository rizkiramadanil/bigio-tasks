import 'package:equatable/equatable.dart';

class Films extends Equatable {
  Films({
    required this.title,
    required this.episodeId,
    required this.openingCrawl,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.characters,
    required this.planets,
    required this.starships,
    required this.vehicles,
    required this.species,
    required this.created,
    required this.edited,
    required this.url,
  });

  String title;
  int episodeId;
  String openingCrawl;
  String director;
  String producer;
  DateTime releaseDate;
  List<String> characters;
  List<String> planets;
  List<String> starships;
  List<String> vehicles;
  List<String> species;
  DateTime created;
  DateTime edited;
  String url;

  @override
  List<Object?> get props => [
    title,
    episodeId,
    openingCrawl,
    director,
    producer,
    releaseDate,
    characters,
    planets,
    starships,
    vehicles,
    species,
    created,
    edited,
    url,
  ];
}
