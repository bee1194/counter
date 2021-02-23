import 'package:counter/blocs/counter_bloc.dart';
import 'package:counter/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
          child: CounterPage(),
        ));
  }
}
