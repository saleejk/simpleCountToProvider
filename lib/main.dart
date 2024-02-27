import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter.dart';
import 'package:flutter_application_1/counter_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterNotifierProvider>(
          create: (_) => CounterNotifierProvider(),
        )
      ],
      child: MaterialApp(
        home: Counter(),
      ),
    );
  }
}
