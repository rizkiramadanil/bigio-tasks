import 'package:equatable/equatable.dart';
import 'package:star_wars/data/models/species_model.dart';

class SpeciesResponse extends Equatable {
  final List<SpeciesModel> speciesList;

  SpeciesResponse({required this.speciesList});

  factory SpeciesResponse.fromJson(Map<String, dynamic> json) => SpeciesResponse(
    speciesList: List<SpeciesModel>.from((json["results"] as List)
        .map((x) => SpeciesModel.fromJson(x))
        .where((element) => element.url != null)),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(speciesList.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [speciesList];
}
