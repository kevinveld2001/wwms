import 'ingredient.dart';

class Receptuur {


Receptuur(this._recipeName,this.ingrediants);

List<Ingredient> ingrediants;
String _recipeName;


String get recipeName => _recipeName;


int getTotalGram(){
  int totalGram = 0;
  for(int i=0;i<ingrediants.length;i++){
    totalGram += ingrediants[i].gram;
  }
  return totalGram;
}



}