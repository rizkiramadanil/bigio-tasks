part of 'films_bloc.dart';

abstract class FilmsState extends Equatable {
  const FilmsState();

  @override
  List<Object> get props => [];
}

class FilmsEmpty extends FilmsState {
  final String message = 'No Data';
}

class FilmsLoading extends FilmsState {}

class FilmsError extends FilmsState {
  final String message;

  const FilmsError(this.message);

  @override
  List<Object> get props => [message];
}

class FilmsLoaded extends FilmsState {
  final List<Films> result;

  const FilmsLoaded(this.result);

  @override
  List<Object> get props => [result];
}
