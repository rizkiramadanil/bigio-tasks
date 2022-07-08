part of 'species_bloc.dart';

abstract class SpeciesEvent extends Equatable {
  const SpeciesEvent();

  @override
  List<Object> get props => [];
}

class GetSpeciesEvent extends SpeciesEvent {}
