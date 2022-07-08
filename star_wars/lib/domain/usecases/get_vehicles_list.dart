import 'package:dartz/dartz.dart';
import 'package:star_wars/common/failure.dart';
import 'package:star_wars/domain/entities/vehicles.dart';
import 'package:star_wars/domain/repositories/repository.dart';

class GetVehiclesList {
  final Repository repository;

  GetVehiclesList(this.repository);

  Future<Either<Failure, List<Vehicles>>> execute() {
    return repository.getVehiclesList();
  }
}
