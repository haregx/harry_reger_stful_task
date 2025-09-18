import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  const CounterCard(
    {
      super.key,
      required this.callback,
    }
  );

  final VoidCallback callback;
  
  @override
  State<StatefulWidget> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
   int counter = 0;

  @override
  Widget build(BuildContext context) {

  return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(counter.toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                  widget.callback();
                });
              },
              child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
