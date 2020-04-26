import 'package:flutter/material.dart';
import 'package:wwms/screen/viewNewRecipe.dart';
import '../class/Receptuur.dart';
import '../class/ReceptBook.dart';
class EnterTotalValue extends StatefulWidget {
  EnterTotalValue(this.recept);
  final Receptuur recept;

  @override
  _EnterTotalValueState createState() => _EnterTotalValueState();
}

class _EnterTotalValueState extends State<EnterTotalValue> {
  int totalvalue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("enter totale gramen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: <Widget>[
          TextField(
            onChanged: (value){
              setState(() {
                totalvalue = int.parse(value);
              });
              
            },
            keyboardType: TextInputType.number,
            autofocus: true,
            decoration: InputDecoration(
              
              hintText: "gram",
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
              width: double.infinity,
              child: RaisedButton(
              
              onPressed: (){
              print("gramen: "+totalvalue.toString());

              //get new values
              //by calling the getCalculatedReceptuur methode with de parems Receptuur: widget.recept
              //en int:totalvalue
              Receptuur newRecipe = ReceptBook().getCalculatedReceptuur(widget.recept, totalvalue);
              
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewNewRecipe(newRecipe),),
            );
            },
            color: Colors.teal[500],
            child: Text("bereken",style: TextStyle(color: Colors.white),),
            ),
          )

        ],),
      ),
    );
  }
}