import 'package:flutter/material.dart';

import 'screen/addRecipe.dart';

import 'class/ReceptBook.dart';
import 'class/Receptuur.dart';
import 'class/ingredient.dart';

import 'screen/enterTotalValue.dart';

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

  ReceptBook rbook = ReceptBook();
  
  @override
  Widget build(BuildContext context) {
    //this ifstatement makes sure that it only inisiallizes the default ones
    if(rbook.receptuurList.length == 0){
      standaartReseptuur();
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Wat Wil maakt smaakt"),
        ),
        body: ListView.builder(
          itemCount: rbook.receptuurList.length,
          itemBuilder: (centext,index){
          return GestureDetector(
            onTap: (){
              print("you tabt "+index.toString());

              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EnterTotalValue(rbook.receptuurList[index]),),
            );

            },
            child: Column(
              children: <Widget>[
                ListTile(title: Text(rbook.receptuurList[index].recipeName),),
                Divider(thickness: 2,indent: 20,endIndent: 20,),
              ],
            ),
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddRecipe(),),
            ).then((v){
              setState(() {
                rbook = ReceptBook();
              });
            });
          },
          child: Icon(Icons.add,color: Colors.white,),
          
        ),


      );
  }
}


///this methode will add all recptes from de default list to the list
///it will do this only ones
void standaartReseptuur () {
  List<Ingredient> stroganoff = [];
  stroganoff.add(Ingredient("Kruidenmix Stroganoff",60 ));
  stroganoff.add(Ingredient("Tomatenketchup",60 ));
  stroganoff.add(Ingredient("Varkensvlees ",1000 ));

  List<Ingredient> runder  = [];
  runder.add(Ingredient("Hamburgerkruiden ",60 ));
  runder.add(Ingredient("Zout",30 ));
  runder.add(Ingredient("Runder",1000 ));

    List<Ingredient> barbecue = [];
  barbecue.add(Ingredient("Amerikaanse kruiden",60 ));
  barbecue.add(Ingredient("Water",60 ));
  barbecue.add(Ingredient("Varkensvlees ",1000 ));

  ReceptBook().addReceptToList( Receptuur("Stroganoff Burgers",stroganoff));
  ReceptBook().addReceptToList( Receptuur("Runder Burgers",runder));
  ReceptBook().addReceptToList( Receptuur("Barbecue  Burgers",barbecue));

}