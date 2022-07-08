part of 'people_bloc.dart';

abstract class PeopleState extends Equatable {
  const PeopleState();

  @override
  List<Object> get props => [];
}

class PeopleEmpty extends PeopleState {
  final String message = 'No Data';
}

class PeopleLoading extends PeopleState {}

class PeopleError extends PeopleState {
  final String message;

  const PeopleError(this.message);

  @override
  List<Object> get props => [message];
}

class PeopleLoaded extends PeopleState {
  final List<People> result;

  const PeopleLoaded(this.result);

  @override
  List<Object> get props => [result];
}
