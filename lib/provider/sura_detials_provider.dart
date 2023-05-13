import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier{
  //here i will put the logic such as function here
  List<String>verses=[];
  void loadFile(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index+ 1}.txt");
    List<String> lines = sura.split("\n");
    verses=lines;
    notifyListeners();

  }

}