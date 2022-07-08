part of 'vehicles_bloc.dart';

abstract class VehiclesState extends Equatable {
  const VehiclesState();

  @override
  List<Object> get props => [];
}

class VehiclesEmpty extends VehiclesState {
  final String message = 'No Data';
}

class VehiclesLoading extends VehiclesState {}

class VehiclesError extends VehiclesState {
  final String message;

  const VehiclesError(this.message);

  @override
  List<Object> get props => [message];
}

class VehiclesLoaded extends VehiclesState {
  final List<Vehicles> result;

  const VehiclesLoaded(this.result);

  @override
  List<Object> get props => [result];
}
