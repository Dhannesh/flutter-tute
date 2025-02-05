import 'package:flutter/material.dart';

void main() {
  runApp(const MyStore());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Pratham Shree!",
        home: Scaffold(
            body: Center(
                child: Text("Welcome to Insta Store",
                    style: TextStyle(fontSize: 24, color: Colors.blue),
                    textDirection: TextDirection.ltr))));
  }
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Insta Store',
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: const Text('Insta Store 2'),
          ),
          body: Column(
            children: [
              Container(
                // color: Colors.white70,
                width: 300,
                height: 300,
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(40),
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  shape: BoxShape.circle,

                  // gradient: LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //     colors: [Colors.yellow,Colors.red])
                ),
              // child: const FlutterLogo(),
                child: Image.network("https://openclipart.org/image/800px/89299"),
              ),
                const Expanded(
                  child: Center(
                    child: Text('Welcome to Happy Store',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Verdana',
                            // color: Color.fromARGB(200, 250, 150, 214),
                            color:Colors.red,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
            ],
          ),
        ));
  }
}
