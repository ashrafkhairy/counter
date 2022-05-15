import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int co = 0;
  @override
  void increment() {
    setState(() {
      co++;
    });
  }

  void decrement() {
    setState(() {
      co--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Counter",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      decrement();
                    });
                  },
                  icon: const Icon(Icons.minimize)),
            ),
            const SizedBox(
              width: 50,
            ),
            Text(
              "$co",
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 50,
            ),
            CircleAvatar(
                backgroundColor: Colors.black,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      decrement();
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
