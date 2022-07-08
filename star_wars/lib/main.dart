import 'package:star_wars/injection.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/common/color_styles.dart';
import 'package:star_wars/presentation/bloc/films/films_bloc.dart';
import 'package:star_wars/presentation/bloc/people/people_bloc.dart';
import 'package:star_wars/presentation/bloc/planets/planets_bloc.dart';
import 'package:star_wars/presentation/bloc/species/species_bloc.dart';
import 'package:star_wars/presentation/bloc/starships/starships_bloc.dart';
import 'package:star_wars/presentation/bloc/vehicles/vehicles_bloc.dart';
import 'package:star_wars/presentation/pages/account_page.dart';
import 'package:star_wars/presentation/pages/home_page.dart';
import 'package:star_wars/presentation/pages/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<FilmsBloc>()),
        BlocProvider(create: (_) => di.locator<PeopleBloc>()),
        BlocProvider(create: (_) => di.locator<PlanetsBloc>()),
        BlocProvider(create: (_) => di.locator<SpeciesBloc>()),
        BlocProvider(create: (_) => di.locator<StarshipsBloc>()),
        BlocProvider(create: (_) => di.locator<VehiclesBloc>()),
      ],
      child: MaterialApp(
        title: 'Star Wars',
        theme: ThemeData(
          colorScheme: kColorScheme,
          primaryColor: clrPrimary,
          scaffoldBackgroundColor: Colors.white
        ),
        home: const SplashScreen(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case SplashScreen.routeName:
              return MaterialPageRoute(builder: (_) => const SplashScreen());
            case HomePage.routeName:
              return MaterialPageRoute(builder: (_) => const HomePage());
            case AccountPage.routeName:
              return MaterialPageRoute(builder: (_) => const AccountPage());
            default:
              return MaterialPageRoute(
                builder: (_) {
                  return const Scaffold(
                    body: Center(
                      child: Text('Page not found :('),
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
