import 'package:equatable/equatable.dart';

class Species extends Equatable {
  Species({
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
