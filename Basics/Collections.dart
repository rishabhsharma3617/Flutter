void main() {
  ////////////////////@@@@Fixed Length List////////////////
  List<int> numList = List(5); //List works as arrayn in Dart
  numList[0] = 1;
  numList[1] = 2;
  numList[2] = 3;
  numList[3] = 4;
  numList[4] = 55;
  print(numList);
  for (int ele in numList) {
    print(ele);
  }
  numList.forEach((element) => {print(element)});
  ///////////////////@@@@Growable List/////////////////////
  //Length is dynamic here and we have differnt methods
  List<int> numGrow = List(); //Method 1 used for declaring 0 elements
  List<String> countries = [
    "india",
    "nepal"
  ]; //Method 2 for declaring with some pre variables;
  numGrow.add(12);
  numGrow.add(15);
  numGrow.add(18);
  numGrow[1] = null;
  print(numGrow);
  numGrow.remove(null);
  print(numGrow);
  numGrow.add(18);
  numGrow.removeAt(1);
  print(numGrow);

  /////////////@@@@@@@Set in DART........////////////////////////
  Set<int> heyList = Set();
  heyList.add(67);
  Set<int> heyyList = Set.from(["Usa", "Inida", "Grow"]);
  print(heyList);
  //we cant read set through index , Same elements cant be added to the set
  heyList.forEach((element) => print(element));
  heyList.contains(67);
  heyList.isEmpty;
  heyList.remove(67);
  heyList.clear();
}
