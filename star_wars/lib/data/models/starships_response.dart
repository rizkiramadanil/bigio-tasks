import 'package:equatable/equatable.dart';
import 'package:star_wars/data/models/starships_model.dart';

class StarshipsResponse extends Equatable {
  final List<StarshipsModel> starshipsList;

  StarshipsResponse({required this.starshipsList});

  factory StarshipsResponse.fromJson(Map<String, dynamic> json) => StarshipsResponse(
    starshipsList: List<StarshipsModel>.from((json["results"] as List)
        .map((x) => StarshipsModel.fromJson(x))
        .where((element) => element.url != null)),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(starshipsList.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [starshipsList];
}
