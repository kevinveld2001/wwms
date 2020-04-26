import 'ingredient.dart';
import 'Receptuur.dart';

class ReceptBook{

static List<Receptuur> _receptuurList = [];
List<Receptuur> get receptuurList => _receptuurList;


///add a recept to a global list
void addReceptToList (Receptuur recept){
  _receptuurList.add(recept);
}
//calculated all the grams to the niew amount by a int "totalGram"
Receptuur getCalculatedReceptuur (Receptuur recept,int totalGram ){

  //berreken procent
double procent = recept.getTotalGram() / totalGram;

//for loop throw the ingrediants list
  for(int i = 0; i< recept.ingrediants.length;i++){
    //calclulate the new "gram" values by multipling it bij "procent"
    recept.ingrediants[i].gram = (recept.ingrediants[i].gram * procent).toInt();

  }
print(recept.ingrediants[0].name);
return recept;
}


  
}