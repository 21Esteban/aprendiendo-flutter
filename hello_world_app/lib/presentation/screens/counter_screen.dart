import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {


  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

int clickCounter = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Screen"),
      ),
      body:  Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(clickCounter.toString(),
            style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
          ),
           Text(
            clickCounter <= 1 ? "click" : "clicks",
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter++ ;
          setState(() {});
        },
        child: const Icon(Icons.plus_one),
      ),
      
    );
  }
}
