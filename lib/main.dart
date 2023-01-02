import 'package:bloc_practice/bloc/counter_bloc/counter_bloc.dart';
import 'package:bloc_practice/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_practice/screens/counter_screen.dart';
import 'package:bloc_practice/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => InternetBloc(),
    //   child: MaterialApp(
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: HomeScreen(),
    //   ),
    // );
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: const CounterPage(),
      ),
    );
  }
}
