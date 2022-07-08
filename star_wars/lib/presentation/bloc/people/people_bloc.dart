import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/domain/entities/people.dart';
import 'package:star_wars/domain/usecases/get_people_list.dart';

part 'people_event.dart';
part 'people_state.dart';

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  final GetPeopleList getPeopleList;

  PeopleBloc(this.getPeopleList) : super(PeopleEmpty()) {
    on<GetPeopleEvent>((event, emit) async {
      emit(PeopleLoading());
      final result = await getPeopleList.execute();

      result.fold((failure) {
        emit(PeopleError(failure.message));
      }, (data) {
        emit(PeopleLoaded(data));
      });
    });
  }
}
