import 'package:flutter/material.dart';
import 'package:wwms/class/Receptuur.dart';
import '../class/ingredient.dart';
import '../class/ReceptBook.dart';

class SaveScreen extends StatefulWidget{
  SaveScreen(this.ingredientList);
  final List<Ingredient> ingredientList;

  @override
  _SaveScreenState createState() => _SaveScreenState();
}

class _SaveScreenState extends State<SaveScreen> {
  String rname = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("save"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          TextField(
            onChanged: (v){
              setState(() {
                rname = v;
              });
              
            },
            decoration: InputDecoration(
              hintText: "recept naam",
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
              width: double.infinity,
              child: RaisedButton(
              
              onPressed: (){
              print("recept naam: "+rname);
              Receptuur recept = new Receptuur(rname, widget.ingredientList);
              ReceptBook().addReceptToList(recept);

              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            color: Colors.teal[500],
            child: Text("save",style: TextStyle(color: Colors.white),),
            ),
          )

        ],),
      ),
    );
  }
}