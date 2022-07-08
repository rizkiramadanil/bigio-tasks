import 'package:dartz/dartz.dart';
import 'package:star_wars/common/failure.dart';
import 'package:star_wars/domain/entities/planets.dart';
import 'package:star_wars/domain/repositories/repository.dart';

class GetPlanetsList {
  final Repository repository;

  GetPlanetsList(this.repository);

  Future<Either<Failure, List<Planets>>> execute() {
    return repository.getPlanetsList();
  }
}
