import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:star_wars/common/exception.dart';
import 'package:star_wars/common/failure.dart';
import 'package:star_wars/data/datasources/remote_data_source.dart';
import 'package:star_wars/domain/entities/films.dart';
import 'package:star_wars/domain/entities/people.dart';
import 'package:star_wars/domain/entities/planets.dart';
import 'package:star_wars/domain/entities/species.dart';
import 'package:star_wars/domain/entities/starships.dart';
import 'package:star_wars/domain/entities/vehicles.dart';
import 'package:star_wars/domain/repositories/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource remoteDataSource;

  RepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Films>>> getFilmsList() async {
    try {
      final result = await remoteDataSource.getFilms();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<People>>> getPeopleList() async {
    try {
      final result = await remoteDataSource.getPeople();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Planets>>> getPlanetsList() async {
    try {
      final result = await remoteDataSource.getPlanets();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Species>>> getSpeciesList() async {
    try {
      final result = await remoteDataSource.getSpecies();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Starships>>> getStarshipsList() async {
    try {
      final result = await remoteDataSource.getStarships();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<Vehicles>>> getVehiclesList() async {
    try {
      final result = await remoteDataSource.getVehicles();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
