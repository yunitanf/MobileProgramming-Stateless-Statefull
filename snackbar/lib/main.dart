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
        title: Text("Snackbar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "hapus produk berhasil",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                action: SnackBarAction(
                  label: "Cancel",
                  onPressed: () {
                    print("Tidak Jadi hapus Produk");
                  },
                  textColor: Colors.red,
                ),
                backgroundColor: Colors.amber,
                duration: Duration(seconds: 3),
                margin: EdgeInsets.all(20),
                behavior: SnackBarBehavior.floating,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            );
          },
          child: Text("Show Snackbar"),
        ),
      ),
    );
  }
}