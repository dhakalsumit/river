import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:learn_riverpod/consumer_demo.dart';
// import 'package:learn_riverpod/home.dart';
import 'package:learn_riverpod/set_state_demo.dart';

final nameProvider = Provider<String>((ref) {
  return "Sumit";
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SetStateDemo(),
    );
  }
}
