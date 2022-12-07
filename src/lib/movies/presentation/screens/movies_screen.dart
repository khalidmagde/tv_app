/* import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tv_app/core/services/services_locator.dart';
import 'package:tv_app/movies/presentation/controller/movies_bloc.dart';
import 'package:tv_app/movies/presentation/controller/movies_event.dart';
import 'package:tv_app/movies/presentation/controller/movies_state.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) {
        return MoviesBloc(
          sl(),
        )..add(GetNowPlayingMoviesEvent());
      },
      child: BlocBuilder<MoviesBloc, MoviesState>(
        builder: (context, state) {
          return const Scaffold();
        },
      ),
    );
  }
}
 */