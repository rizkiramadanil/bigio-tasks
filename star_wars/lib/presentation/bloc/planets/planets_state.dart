part of 'planets_bloc.dart';

abstract class PlanetsState extends Equatable {
  const PlanetsState();

  @override
  List<Object> get props => [];
}

class PlanetsEmpty extends PlanetsState {
  final String message = 'No Data';
}

class PlanetsLoading extends PlanetsState {}

class PlanetsError extends PlanetsState {
  final String message;

  const PlanetsError(this.message);

  @override
  List<Object> get props => [message];
}

class PlanetsLoaded extends PlanetsState {
  final List<Planets> result;

  const PlanetsLoaded(this.result);

  @override
  List<Object> get props => [result];
}
