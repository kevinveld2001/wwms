import 'package:flutter/material.dart';
import '../class/Receptuur.dart';
class ViewNewRecipe extends StatelessWidget {
  ViewNewRecipe(this.recept);
  final Receptuur recept;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("berekende grammen"),),
      body: ListView.builder(
        itemCount: recept.ingrediants.length,
        itemBuilder: (context,index){
          print("${recept.ingrediants[index].gram} gram | ${recept.ingrediants[index].name}");
          return ListTile(title: Text("${recept.ingrediants[index].gram} gram | ${recept.ingrediants[index].name}"),);
      }),
    );
  }
}