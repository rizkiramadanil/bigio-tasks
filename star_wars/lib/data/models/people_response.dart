import 'package:equatable/equatable.dart';
import 'package:star_wars/data/models/people_model.dart';

class PeopleResponse extends Equatable {
  final List<PeopleModel> peopleList;

  PeopleResponse({required this.peopleList});

  factory PeopleResponse.fromJson(Map<String, dynamic> json) => PeopleResponse(
    peopleList: List<PeopleModel>.from((json["results"] as List)
        .map((x) => PeopleModel.fromJson(x))
        .where((element) => element.url != null)),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(peopleList.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [peopleList];
}
