import 'package:equatable/equatable.dart';
import 'package:star_wars/data/models/films_model.dart';

class FilmsResponse extends Equatable {
  final List<FilmsModel> filmsList;

  FilmsResponse({required this.filmsList});

  factory FilmsResponse.fromJson(Map<String, dynamic> json) => FilmsResponse(
    filmsList: List<FilmsModel>.from((json["results"] as List)
        .map((x) => FilmsModel.fromJson(x))
        .where((element) => element.url != null)),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(filmsList.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [filmsList];
}
