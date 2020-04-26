import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal[500]
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wat Wil maakt smaakt"),
        ),
        body: Text("recept list"),
        floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
          child: Icon(Icons.add,color: Colors.white,),
          backgroundColor: Colors.teal[500],
        ),


      ),
    );
  }
}