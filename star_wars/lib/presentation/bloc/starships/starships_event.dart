part of 'starships_bloc.dart';

abstract class StarshipsEvent extends Equatable {
  const StarshipsEvent();

  @override
  List<Object> get props => [];
}

class GetStarshipsEvent extends StarshipsEvent {}
