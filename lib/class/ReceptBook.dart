import 'ingredient.dart';
import 'Receptuur.dart';

class ReceptBook{

static List<Receptuur> _receptuurList = [];
List<Receptuur> get receptuurList => _receptuurList;

void addReceptToList (Receptuur recept){
  _receptuurList.add(recept);
}

  
}