import 'package:flutter/material.dart';

class SetStateDemo extends StatefulWidget {
  const SetStateDemo({super.key});

  @override
  State<SetStateDemo> createState() => _SetStateDemoState();
}

class _SetStateDemoState extends State<SetStateDemo> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    print("I am rebuilding this widget  tree ...");
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text("My name is"),
          ),
          Center(
            child: Text(name),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  name = "name returns ";
                });
              },
              child: const Text("Press me"))
        ],
      ),
    );
  }
}
