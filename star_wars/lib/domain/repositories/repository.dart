import 'package:dartz/dartz.dart';
import 'package:star_wars/common/failure.dart';
import 'package:star_wars/domain/entities/films.dart';
import 'package:star_wars/domain/entities/people.dart';
import 'package:star_wars/domain/entities/planets.dart';
import 'package:star_wars/domain/entities/species.dart';
import 'package:star_wars/domain/entities/starships.dart';
import 'package:star_wars/domain/entities/vehicles.dart';

abstract class Repository {
  Future<Either<Failure, List<Films>>> getFilmsList();
  Future<Either<Failure, List<People>>> getPeopleList();
  Future<Either<Failure, List<Planets>>> getPlanetsList();
  Future<Either<Failure, List<Species>>> getSpeciesList();
  Future<Either<Failure, List<Starships>>> getStarshipsList();
  Future<Either<Failure, List<Vehicles>>> getVehiclesList();
}
