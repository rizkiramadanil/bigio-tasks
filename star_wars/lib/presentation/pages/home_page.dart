import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/common/color_styles.dart';
import 'package:star_wars/common/text_styles.dart';
import 'package:star_wars/presentation/bloc/films/films_bloc.dart';
import 'package:star_wars/presentation/bloc/people/people_bloc.dart';
import 'package:star_wars/presentation/bloc/planets/planets_bloc.dart';
import 'package:star_wars/presentation/bloc/species/species_bloc.dart';
import 'package:star_wars/presentation/bloc/starships/starships_bloc.dart';
import 'package:star_wars/presentation/bloc/vehicles/vehicles_bloc.dart';
import 'package:star_wars/presentation/pages/account_page.dart';
import 'package:star_wars/presentation/widgets/films_widget.dart';
import 'package:star_wars/presentation/widgets/people_widget.dart';
import 'package:star_wars/presentation/widgets/planets_widget.dart';
import 'package:star_wars/presentation/widgets/species_widget.dart';
import 'package:star_wars/presentation/widgets/starships_widget.dart';
import 'package:star_wars/presentation/widgets/vehicles_widget.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home-page';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 6, vsync: this);
    
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pushNamed(context, AccountPage.routeName);
            },
            icon: const Icon(
              Icons.person,
              size: 32,
            ),
          ),
        ],
        iconTheme: const IconThemeData(
            color: clrSecondary
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Welcome Everyone!',
              style: txtLargeTitle
            ),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              controller: tabController,
              isScrollable: true,
              labelPadding: const EdgeInsets.only(left: 20, right: 20),
              labelColor: clrPrimary,
              unselectedLabelColor: clrTertiary,
              indicatorColor: Colors.transparent,
              tabs: const [
                Tab(text: 'Films',),
                Tab(text: 'People',),
                Tab(text: 'Planets',),
                Tab(text: 'Species',),
                Tab(text: 'Starships',),
                Tab(text: 'Vehicles',),
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height * 0.705,
            child: TabBarView(
              controller: tabController,
              children: [
                buildFilms(context),
                buildPeople(context),
                buildPlanets(context),
                buildSpecies(context),
                buildStarships(context),
                buildVehicles(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<FilmsBloc>().add(GetFilmsEvent());
      context.read<PeopleBloc>().add(GetPeopleEvent());
      context.read<PlanetsBloc>().add(GetPlanetsEvent());
      context.read<SpeciesBloc>().add(GetSpeciesEvent());
      context.read<StarshipsBloc>().add(GetStarshipsEvent());
      context.read<VehiclesBloc>().add(GetVehiclesEvent());
    });
  }

  Widget buildFilms(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FilmsBloc, FilmsState>(
        builder: (context, state) {
          if (state is FilmsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FilmsLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final films = state.result[index];
                return FilmsWidget(films);
              },
              itemCount: state.result.length,
            );
          } else if (state is FilmsEmpty) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else if (state is FilmsError) {
            return Center(
              key: const Key('error_message'),
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildPeople(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PeopleBloc, PeopleState>(
        builder: (context, state) {
          if (state is PeopleLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PeopleLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final people = state.result[index];
                return PeopleWidget(people);
              },
              itemCount: state.result.length,
            );
          } else if (state is PeopleEmpty) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else if (state is PeopleError) {
            return Center(
              key: const Key('error_message'),
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildPlanets(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PlanetsBloc, PlanetsState>(
        builder: (context, state) {
          if (state is PlanetsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PlanetsLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final planets = state.result[index];
                return PlanetsWidget(planets);
              },
              itemCount: state.result.length,
            );
          } else if (state is PlanetsEmpty) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else if (state is PlanetsError) {
            return Center(
              key: const Key('error_message'),
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildSpecies(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SpeciesBloc, SpeciesState>(
        builder: (context, state) {
          if (state is SpeciesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SpeciesLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final species = state.result[index];
                return SpeciesWidget(species);
              },
              itemCount: state.result.length,
            );
          } else if (state is SpeciesEmpty) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else if (state is SpeciesError) {
            return Center(
              key: const Key('error_message'),
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildStarships(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<StarshipsBloc, StarshipsState>(
        builder: (context, state) {
          if (state is StarshipsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is StarshipsLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final starships = state.result[index];
                return StarshipsWidget(starships);
              },
              itemCount: state.result.length,
            );
          } else if (state is StarshipsEmpty) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else if (state is StarshipsError) {
            return Center(
              key: const Key('error_message'),
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget buildVehicles(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<VehiclesBloc, VehiclesState>(
        builder: (context, state) {
          if (state is VehiclesLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is VehiclesLoaded) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final vehicles = state.result[index];
                return VehiclesWidget(vehicles);
              },
              itemCount: state.result.length,
            );
          } else if (state is VehiclesEmpty) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else if (state is VehiclesError) {
            return Center(
              key: const Key('error_message'),
              child: Text(
                state.message,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
