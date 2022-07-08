import 'package:dartz/dartz.dart';
import 'package:star_wars/common/failure.dart';
import 'package:star_wars/domain/entities/people.dart';
import 'package:star_wars/domain/repositories/repository.dart';

class GetPeopleList {
  final Repository repository;

  GetPeopleList(this.repository);

  Future<Either<Failure, List<People>>> execute() {
    return repository.getPeopleList();
  }
}
