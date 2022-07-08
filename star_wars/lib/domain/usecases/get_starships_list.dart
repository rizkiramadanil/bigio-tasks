import 'package:dartz/dartz.dart';
import 'package:star_wars/common/failure.dart';
import 'package:star_wars/domain/entities/starships.dart';
import 'package:star_wars/domain/repositories/repository.dart';

class GetStarshipsList {
  final Repository repository;

  GetStarshipsList(this.repository);

  Future<Either<Failure, List<Starships>>> execute() {
    return repository.getStarshipsList();
  }
}
