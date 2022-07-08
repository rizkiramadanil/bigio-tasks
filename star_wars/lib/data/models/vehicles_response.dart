import 'package:equatable/equatable.dart';
import 'package:star_wars/data/models/vehicles_model.dart';

class VehiclesResponse extends Equatable {
  final List<VehiclesModel> vehiclesList;

  VehiclesResponse({required this.vehiclesList});

  factory VehiclesResponse.fromJson(Map<String, dynamic> json) => VehiclesResponse(
    vehiclesList: List<VehiclesModel>.from((json["results"] as List)
        .map((x) => VehiclesModel.fromJson(x))
        .where((element) => element.url != null)),
  );

  Map<String, dynamic> toJson() => {
    "results": List<dynamic>.from(vehiclesList.map((x) => x.toJson())),
  };

  @override
  List<Object> get props => [vehiclesList];
}
