import 'package:flutter/material.dart';
import 'package:stful_task/counter_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  
  
  @override
  State<StatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int totalCounter = 0;

  void incrementTotalCounter() {
    setState(() {
      totalCounter++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
        Center(
          child: Column(
            spacing: 16,
            children: [
              Text ('Total counter: $totalCounter'),  
              CounterCard(callback: incrementTotalCounter,),
              CounterCard(callback: incrementTotalCounter,),
              CounterCard(callback: incrementTotalCounter,),
              CounterCard(callback: incrementTotalCounter,),
              CounterCard(callback: incrementTotalCounter,),
            ],
          ),
        ),
      ),
    );
  }
}
