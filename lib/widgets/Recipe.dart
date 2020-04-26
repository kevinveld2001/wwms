import 'package:flutter/material.dart';
import '../class/ingredient.dart';

class Recipe extends StatelessWidget {
  Recipe(this.ingredientList);
  final List<Ingredient> ingredientList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: ingredientList.length,
              itemBuilder:(context, index) {
                return ListTile(title: Text("${ingredientList[index].gram} gram | ${ingredientList[index].name}"),);
              } 
              
              
              )
          ),
          Divider(thickness: 2,indent: 20,endIndent: 20,),
          
        ],
      ),
    );
  }
}
