import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_notifier.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<CounterNotifierProvider>(
            builder: (context, provider, child) {
          return Text('${provider.counter}');
        }),
      ),
      floatingActionButton: Consumer<CounterNotifierProvider>(
          builder: (context, provider, child) {
        return FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              provider.increment();
            });
      }),
    );
  }
}
