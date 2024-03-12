import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn_riverpod/main.dart';

class ConsumerDemo extends StatefulWidget {
  const ConsumerDemo({super.key});

  @override
  State<ConsumerDemo> createState() => _ConsumerDemoState();
}

class _ConsumerDemoState extends State<ConsumerDemo> {
  late final TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("I am rebuilding this widget  tree ...");
    return Scaffold(body: Consumer(
      builder: (context, ref, child) {
        final name = ref.watch(nameChangeProvider);
        print("i am building ");
        return Column(
          children: [
            const Center(
              child: Text("My name is"),
            ),
            TextField(
              controller: _controller,
            ),
            Center(
              child: Text(name),
            ),
            ElevatedButton(
                onPressed: () {
                  ref
                      .read(nameChangeProvider.notifier)
                      .update((state) => _controller.text);
                },
                child: const Text("Press me"))
          ],
        );
      },
    ));
  }
}

final nameChangeProvider = StateProvider<String>((ref) {
  return "sumit";
});
