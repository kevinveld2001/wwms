import 'ingredient.dart';

class Receptuur {


Receptuur(this._recipeName,this._ingrediants);

List<Ingredient> _ingrediants;
String _recipeName;

List<Ingredient> get ingrediants => _ingrediants;
String get recipeName => _recipeName;


int getTotalGram(){
  int totalGram = 0;
  for(int i=0;i<_ingrediants.length;i++){
    totalGram += _ingrediants[i].gram;
  }
  return totalGram;
}



}