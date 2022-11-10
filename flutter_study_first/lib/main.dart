import 'package:flutter/material.dart';
import 'package:flutter_study_first/screens/first_screen.dart';

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
        primarySwatch: Colors.green,
      ),
      home: FirstScreen(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   final String title;
//   MyHomePage({required this.title});
//   List<Widget> myChildren = [];

//   @override
//   Widget build(BuildContext context) {
//     for (var i = 0; i < 50; i++) {
//       myChildren.add(Text(
//         'Hello, world',
//         style: TextStyle(fontSize: 25),
//       ));
//     }

//     return Scaffold(
//         appBar: AppBar(
//           title: Text(title),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(onPressed: () {}, child: Text('Text Button')),
//             Padding(padding: EdgeInsets.all(20)),
//             ElevatedButton(onPressed: () {}, child: Text('Elevated Button')),
//             Padding(padding: EdgeInsets.all(20)),
//             OutlinedButton(onPressed: () {}, child: Text('Outlined Button')),
//             Padding(padding: EdgeInsets.all(20)),
//             IconButton(onPressed: () {}, icon: Icon(Icons.star))
//           ],
//         )));
//   }

//   // const MyHomePage({super.key, required this.title});

//   // // This widget is the home page of your application. It is stateful, meaning
//   // // that it has a State object (defined below) that contains fields that affect
//   // // how it looks.

//   // // This class is the configuration for the state. It holds the values (in this
//   // // case the title) provided by the parent (in this case the App widget) and
//   // // used by the build method of the State. Fields in a Widget subclass are
//   // // always marked "final".

//   // final String title;

//   // @override
//   // State<MyHomePage> createState() => _MyHomePageState();
// }
