import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/src/bloc/counter_a_bloc/counter_a_bloc.dart';
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
    // final counterABloc =
    // BlocProvider<CounterABloc>(create: (context) => CounterABloc());
    return MultiBlocProvider(
      providers: [
        counterABloc
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter BLOC'),
      ),
    );
  }
}
