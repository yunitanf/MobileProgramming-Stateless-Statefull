import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super (key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                title: Text("Ini Judul"),
                content: Text("Ini adalah deskripsi dialog, Kamu bisa melihatanya disini."),
                actions: [
                  ElevatedButton(onPressed: () {}, child: Text("Cancel")),
                  ElevatedButton(onPressed: () {}, child: Text("Okay")),
                ],
              ),
            );
          },
          child: Text("Show dialog"),
        ),
      ),
    );
  }
}