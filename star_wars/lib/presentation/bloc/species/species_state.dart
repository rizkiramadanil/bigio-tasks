part of 'species_bloc.dart';

abstract class SpeciesState extends Equatable {
  const SpeciesState();

  @override
  List<Object> get props => [];
}

class SpeciesEmpty extends SpeciesState {
  final String message = 'No Data';
}

class SpeciesLoading extends SpeciesState {}

class SpeciesError extends SpeciesState {
  final String message;

  const SpeciesError(this.message);

  @override
  List<Object> get props => [message];
}

class SpeciesLoaded extends SpeciesState {
  final List<Species> result;

  const SpeciesLoaded(this.result);

  @override
  List<Object> get props => [result];
}
