import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter/blocs/counter/bloc/counter_bloc.dart';
import 'package:flutter_counter/screens/screens_counter.dart';
import 'package:flutter_counter/screens/screens_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        title: 'Flutter State Bloc',
        routes: {
          '/': (context) => HomeScreen(),
          '/counter': (context) => CounterScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
