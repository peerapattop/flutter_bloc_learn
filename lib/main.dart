import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/src/app_route.dart';
import 'package:flutter_bloc_learn/src/bloc/counter_a_bloc/counter_a_bloc.dart';
import 'package:flutter_bloc_learn/src/bloc/counter_b_bloc/counter_b_bloc.dart';
import 'package:flutter_bloc_learn/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterABloc =
    BlocProvider<CounterABloc>(create: (context) => CounterABloc());
    final counterBBloc =
    BlocProvider<CounterBBloc>(create: (context) => CounterBBloc());
    return MultiBlocProvider(
      providers: [
        counterABloc,
        counterBBloc
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routes: AppRoute().getAll,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter BLOC'),
      ),
    );
  }
}
