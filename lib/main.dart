import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PRAKTIKUM DAY 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 75, 222)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Arkananta_shelby'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:
      // Container(
      //   padding: const EdgeInsets.all(20),
      //   margin: const EdgeInsets.all(9),
      //   width: 100,
      //   height: 100,
      //   color: Colors.black,
      //   child: const Center(
      //     child: Text("Hello World",
      //     style: TextStyle(
      //         fontSize: 20,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.redAccent
      //       ),
      //     )
      //   ),
      // ) 
    Center(
      child: Column(children: [
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
          color: Colors.tealAccent, 
          shape: BoxShape.circle, // Membuat bentuk bulat
          ),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.purpleAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.pink,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
        ),
      ],),
    )
    );
  }
}