import 'package:equatable/equatable.dart';
import 'package:star_wars/data/models/planets_model.dart';

class PlanetsResponse extends Equatable {
  final List<PlanetsModel> planetsList;

  PlanetsResponse({required this.planetsList});

  factory PlanetsResponse.fromJson(Map<String, dynamic> json) => PlanetsResponse(
    planetsList: List<PlanetsModel>.from((json["results"] as List)
        .map((x) => PlanetsModel.fromJson(x))
        .where((element) => element.url != null)),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(planetsList.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [planetsList];
}
