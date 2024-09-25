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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 238, 35, 208)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'arka store'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
  List<String> titles = ["nigger","Bike", "Boat", "car"];
class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    
    final icons = [
      Icons.person,
      Icons.directions_bike,
      Icons.directions_boat, 
      Icons.directions_car
      ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(titles[index]),
              onTap: () {
                
              },
            )
          );
        }
      ),

      //   children: const [
      //     ListTile(
      //       leading: Icon(Icons.sunny),
      //       title: Text("Sun"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.brightness_3),
      //       title: Text("Moon"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.star),
      //       title: Text("Star"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("ikn.jpeg"),
      //       ),
      //       title: Text("IKN"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     )
      //   ],
      // ),

  // body: GridView(
  //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //   crossAxisCount: 3,
  //   ),
  //     children: [
  //       Container(  
  //         width: 100,
  //         height: 250,
  //         margin: const EdgeInsets.only(bottom: 10),
  //         color: Colors.red,
  //         child: const Image(image: AssetImage("ikn.jpeg"))
  //       ),
  //       Container(
  //         width: 100,
  //         height: 250,
  //         margin: const EdgeInsets.only(bottom: 10),
  //         color: Colors.blue,
  //       ),
  //       ],
  //     ),
    );
  }
}