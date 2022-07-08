import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/domain/entities/starships.dart';
import 'package:star_wars/domain/usecases/get_starships_list.dart';

part 'starships_event.dart';
part 'starships_state.dart';

class StarshipsBloc extends Bloc<StarshipsEvent, StarshipsState> {
  final GetStarshipsList getStarshipsList;

  StarshipsBloc(this.getStarshipsList) : super(StarshipsEmpty()) {
    on<GetStarshipsEvent>((event, emit) async {
      emit(StarshipsLoading());
      final result = await getStarshipsList.execute();

      result.fold((failure) {
        emit(StarshipsError(failure.message));
      }, (data) {
        emit(StarshipsLoaded(data));
      });
    });
  }
}
