import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/domain/entities/vehicles.dart';
import 'package:star_wars/domain/usecases/get_vehicles_list.dart';

part 'vehicles_event.dart';
part 'vehicles_state.dart';

class VehiclesBloc extends Bloc<VehiclesEvent, VehiclesState> {
  final GetVehiclesList getVehiclesList;

  VehiclesBloc(this.getVehiclesList) : super(VehiclesEmpty()) {
    on<GetVehiclesEvent>((event, emit) async {
      emit(VehiclesLoading());
      final result = await getVehiclesList.execute();

      result.fold((failure) {
        emit(VehiclesError(failure.message));
      }, (data) {
        emit(VehiclesLoaded(data));
      });
    });
  }
}
