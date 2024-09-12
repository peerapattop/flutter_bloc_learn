import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_learn/src/bloc/counter_a_bloc/counter_a_bloc.dart';
import '../bloc/counter_b_bloc/counter_b_bloc.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key, required this.title});

  final String title;

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterABloc, CounterAState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'CounterA:',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    '${state.count}',
                    style: const TextStyle(fontSize: 30),
                  ),
                ],
              );
            },
          ),
          const SizedBox(width: 50),
          BlocBuilder<CounterBBloc, CounterBState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'CounterB:',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    '${state.count}',
                    style: const TextStyle(fontSize: 30),
                  ),
                ],
              );
            },
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterABloc>().add(CounterAEventAdd()),
                tooltip: 'Add',
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterABloc>().add(CounterAEventReset()),
                tooltip: 'Reset',
                child: const Icon(Icons.restore),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBBloc>().add(CounterBEventAdd()),
                tooltip: 'Add',
                child: const Icon(Icons.add),
              ),
              const SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBBloc>().add(CounterBEventReset()),
                tooltip: 'Reset',
                child: const Icon(Icons.restore),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
