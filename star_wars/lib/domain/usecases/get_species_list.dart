import 'package:dartz/dartz.dart';
import 'package:star_wars/common/failure.dart';
import 'package:star_wars/domain/entities/species.dart';
import 'package:star_wars/domain/repositories/repository.dart';

class GetSpeciesList {
  final Repository repository;

  GetSpeciesList(this.repository);

  Future<Either<Failure, List<Species>>> execute() {
    return repository.getSpeciesList();
  }
}
