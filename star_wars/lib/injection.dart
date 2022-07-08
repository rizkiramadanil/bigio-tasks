import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:star_wars/data/datasources/remote_data_source.dart';
import 'package:star_wars/data/repositories/repository_impl.dart';
import 'package:star_wars/domain/repositories/repository.dart';
import 'package:star_wars/domain/usecases/get_films_list.dart';
import 'package:star_wars/domain/usecases/get_people_list.dart';
import 'package:star_wars/domain/usecases/get_planets_list.dart';
import 'package:star_wars/domain/usecases/get_species_list.dart';
import 'package:star_wars/domain/usecases/get_starships_list.dart';
import 'package:star_wars/domain/usecases/get_vehicles_list.dart';
import 'package:star_wars/presentation/bloc/films/films_bloc.dart';
import 'package:star_wars/presentation/bloc/people/people_bloc.dart';
import 'package:star_wars/presentation/bloc/planets/planets_bloc.dart';
import 'package:star_wars/presentation/bloc/species/species_bloc.dart';
import 'package:star_wars/presentation/bloc/starships/starships_bloc.dart';
import 'package:star_wars/presentation/bloc/vehicles/vehicles_bloc.dart';

final locator = GetIt.instance;

void init() {
  // bloc
  locator.registerFactory(() => FilmsBloc(locator()));
  locator.registerFactory(() => PeopleBloc(locator()));
  locator.registerFactory(() => PlanetsBloc(locator()));
  locator.registerFactory(() => SpeciesBloc(locator()));
  locator.registerFactory(() => StarshipsBloc(locator()));
  locator.registerFactory(() => VehiclesBloc(locator()));

  // use case
  locator.registerLazySingleton(() => GetFilmsList(locator()));
  locator.registerLazySingleton(() => GetPeopleList(locator()));
  locator.registerLazySingleton(() => GetPlanetsList(locator()));
  locator.registerLazySingleton(() => GetSpeciesList(locator()));
  locator.registerLazySingleton(() => GetStarshipsList(locator()));
  locator.registerLazySingleton(() => GetVehiclesList(locator()));

  // repository
  locator.registerLazySingleton<Repository>(
    () => RepositoryImpl(remoteDataSource: locator()));

  // data sources
  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(client: locator()));

  // external
  locator.registerLazySingleton(() => http.Client());
}
