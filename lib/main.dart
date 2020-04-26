import 'package:flutter/material.dart';

import 'screen/addRecipe.dart';

import 'class/ReceptBook.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal[500],
        accentColor:  Colors.teal[500],
      ),
      home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Wat Wil maakt smaakt"),
        ),
        body: Text("recept list"),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddRecipe(),),
            );
          },
          child: Icon(Icons.add,color: Colors.white,),
          
        ),


      );
  }
}