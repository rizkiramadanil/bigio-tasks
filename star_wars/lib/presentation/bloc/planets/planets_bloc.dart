import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/domain/entities/planets.dart';
import 'package:star_wars/domain/usecases/get_planets_list.dart';

part 'planets_event.dart';
part 'planets_state.dart';

class PlanetsBloc extends Bloc<PlanetsEvent, PlanetsState> {
  final GetPlanetsList getPlanetsList;

  PlanetsBloc(this.getPlanetsList) : super(PlanetsEmpty()) {
    on<GetPlanetsEvent>((event, emit) async {
      emit(PlanetsLoading());
      final result = await getPlanetsList.execute();

      result.fold((failure) {
        emit(PlanetsError(failure.message));
      }, (data) {
        emit(PlanetsLoaded(data));
      });
    });
  }
}
