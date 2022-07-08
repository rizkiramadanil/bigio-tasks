import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/domain/entities/films.dart';
import 'package:star_wars/domain/usecases/get_films_list.dart';

part 'films_event.dart';
part 'films_state.dart';

class FilmsBloc extends Bloc<FilmsEvent, FilmsState> {
  final GetFilmsList getFilmsList;

  FilmsBloc(this.getFilmsList) : super(FilmsEmpty()) {
    on<GetFilmsEvent>((event, emit) async {
      emit(FilmsLoading());
      final result = await getFilmsList.execute();

      result.fold((failure) {
        emit(FilmsError(failure.message));
      }, (data) {
        emit(FilmsLoaded(data));
      });
    });
  }
}
