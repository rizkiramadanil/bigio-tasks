part of 'starships_bloc.dart';

abstract class StarshipsState extends Equatable {
  const StarshipsState();

  @override
  List<Object> get props => [];
}

class StarshipsEmpty extends StarshipsState {
  final String message = 'No Data';
}

class StarshipsLoading extends StarshipsState {}

class StarshipsError extends StarshipsState {
  final String message;

  const StarshipsError(this.message);

  @override
  List<Object> get props => [message];
}

class StarshipsLoaded extends StarshipsState {
  final List<Starships> result;

  const StarshipsLoaded(this.result);

  @override
  List<Object> get props => [result];
}
