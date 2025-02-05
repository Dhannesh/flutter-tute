import 'package:flutter/material.dart';

void main() {
  runApp(const MyStore());
}

class MyStore extends StatelessWidget {
  const MyStore({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Insta Store',
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.orange,
            secondary: Colors.green
          )
        ),
        home: Scaffold(
          appBar: AppBar(
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
                            fontWeight: FontWeight.bold)),
                  ),
                ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {debugPrint('Thank you for liking us!');},
            tooltip: 'Like Us!',
            child: const Icon(Icons.favorite),
          ),
        ));
  }
}
