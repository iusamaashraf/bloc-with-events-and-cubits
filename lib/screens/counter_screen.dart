import 'package:bloc_practice/bloc/counter_bloc/counter_bloc.dart';
import 'package:bloc_practice/bloc/counter_bloc/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: BlocBuilder<CounterBloc, int>(builder: (context, count) {
        return Center(
          child:
              // count < 0
              //     ? const Scaffold.of(context).showSnackBar(const SnackBar(
              //         content: Text(
              //             'Value is equal to 0 now we can\'t decrease this value because 0 is minimum number in app')))
              //     :
              Text(
            '$count',
            style: const TextStyle(fontSize: 40),
          ),
        );
      }),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(CounterIncrementPressed());
              },
              child: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: FloatingActionButton(
              onPressed: () {
                context.read<CounterBloc>().add(CounterDecrementPressed());
              },
              child: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
