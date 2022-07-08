import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/domain/entities/species.dart';
import 'package:star_wars/domain/usecases/get_species_list.dart';

part 'species_event.dart';
part 'species_state.dart';

class SpeciesBloc extends Bloc<SpeciesEvent, SpeciesState> {
  final GetSpeciesList getSpeciesList;

  SpeciesBloc(this.getSpeciesList) : super(SpeciesEmpty()) {
    on<GetSpeciesEvent>((event, emit) async {
      emit(SpeciesLoading());
      final result = await getSpeciesList.execute();

      result.fold((failure) {
        emit(SpeciesError(failure.message));
      }, (data) {
        emit(SpeciesLoaded(data));
      });
    });
  }
}
