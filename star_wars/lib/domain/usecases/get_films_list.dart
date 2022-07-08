import 'package:dartz/dartz.dart';
import 'package:star_wars/common/failure.dart';
import 'package:star_wars/domain/entities/films.dart';
import 'package:star_wars/domain/repositories/repository.dart';

class GetFilmsList {
  final Repository repository;

  GetFilmsList(this.repository);

  Future<Either<Failure, List<Films>>> execute() {
    return repository.getFilmsList();
  }
}
