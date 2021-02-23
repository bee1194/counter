import 'package:counter/blocs/counter_bloc.dart';
import 'package:counter/events/counter_events.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final CounterBloc counterBloc = context.bloc<CounterBloc>();
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, counter) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Two actions/events here:",
                  style: TextStyle(fontSize: 25),
                ),
                Container(
                  child: FlatButton(
                    onPressed: () {
                      print("hereeeeeeeeeee");
                      counterBloc.add(CounterEvent.increment);
                    },
                    child: Text(
                      "Increment(+)",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.greenAccent),
                ),
                Text(
                  'Result: $counter',
                  style: TextStyle(fontSize: 40, color: Colors.blue),
                ),
                Container(
                  child: FlatButton(
                    onPressed: () {
                      print("hereeeeeeeeeee");
                      counterBloc.add(CounterEvent.decrement);
                    },
                    child: Text(
                      "Decrement(-)",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.redAccent),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
