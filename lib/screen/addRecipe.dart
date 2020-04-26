import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wwms/widgets/Recipe.dart';
import '../class/ingredient.dart';
import 'saveScreen.dart';


class AddRecipe extends StatefulWidget {
  @override
  _AddRecipeState createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipe> {
  List<Ingredient> ingredientList = [];
final gramInput = TextEditingController();
final nameInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wat Wil maakt smaakt"),
        actions: <Widget>[IconButton(icon:Icon(Icons.save),onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SaveScreen(ingredientList),),
            );
        },)],
      ),
      body: SingleChildScrollView(
              child: Column(children: <Widget>[
          Recipe(ingredientList),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              
              children: <Widget>[
                Container(
                  width: 60,
               child:TextField(
                 autofocus: true,
                 controller: gramInput,
                 keyboardType: TextInputType.number,
                   decoration: InputDecoration(
                      
                      hintText: 'gram'
                    ),
                ),
                ),
                SizedBox(width: 20,),
                Expanded(
                flex: 1,
                child: TextField(
                  controller: nameInput,
                   decoration: InputDecoration(
                      
                      hintText: 'name'
                    ),
                )
                ),
                SizedBox(width: 20,),
              RaisedButton(onPressed: (){
                setState(() {
                  ingredientList.add(Ingredient( nameInput.text ,int.parse(gramInput.text)));
                });
                print(gramInput.text);
                print(nameInput.text);
                gramInput.clear();
                nameInput.clear();
              },
              color: Colors.teal[500],
              child: Text("add",style: TextStyle(color: Colors.white),),)
            ],),
          )
        ],),
      ),
    );
  }
}