import 'dart:convert';

import 'package:star_wars/common/exception.dart';
import 'package:star_wars/data/models/films_model.dart';
import 'package:http/http.dart' as http;
import 'package:star_wars/data/models/films_response.dart';
import 'package:star_wars/data/models/people_model.dart';
import 'package:star_wars/data/models/people_response.dart';
import 'package:star_wars/data/models/planets_model.dart';
import 'package:star_wars/data/models/planets_response.dart';
import 'package:star_wars/data/models/species_model.dart';
import 'package:star_wars/data/models/species_response.dart';
import 'package:star_wars/data/models/starships_model.dart';
import 'package:star_wars/data/models/starships_response.dart';
import 'package:star_wars/data/models/vehicles_model.dart';
import 'package:star_wars/data/models/vehicles_response.dart';

abstract class RemoteDataSource {
  Future<List<FilmsModel>> getFilms();
  Future<List<PeopleModel>> getPeople();
  Future<List<PlanetsModel>> getPlanets();
  Future<List<SpeciesModel>> getSpecies();
  Future<List<StarshipsModel>> getStarships();
  Future<List<VehiclesModel>> getVehicles();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  static const baseURL = 'https://swapi.dev/api';

  final http.Client client;

  RemoteDataSourceImpl({required this.client});

  @override
  Future<List<FilmsModel>> getFilms() async {
    final response = await client.get(Uri.parse('$baseURL/films'));

    if (response.statusCode == 200) {
      return FilmsResponse.fromJson(json.decode(response.body)).filmsList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<PeopleModel>> getPeople() async {
    final response = await client.get(Uri.parse('$baseURL/people'));

    if (response.statusCode == 200) {
      return PeopleResponse.fromJson(json.decode(response.body)).peopleList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<PlanetsModel>> getPlanets() async {
    final response = await client.get(Uri.parse('$baseURL/planets'));

    if (response.statusCode == 200) {
      return PlanetsResponse.fromJson(json.decode(response.body)).planetsList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<SpeciesModel>> getSpecies() async {
    final response = await client.get(Uri.parse('$baseURL/species'));

    if (response.statusCode == 200) {
      return SpeciesResponse.fromJson(json.decode(response.body)).speciesList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<StarshipsModel>> getStarships() async {
    final response = await client.get(Uri.parse('$baseURL/starships'));

    if (response.statusCode == 200) {
      return StarshipsResponse.fromJson(json.decode(response.body)).starshipsList;
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<VehiclesModel>> getVehicles() async {
    final response = await client.get(Uri.parse('$baseURL/vehicles'));

    if (response.statusCode == 200) {
      return VehiclesResponse.fromJson(json.decode(response.body)).vehiclesList;
    } else {
      throw ServerException();
    }
  }
}
