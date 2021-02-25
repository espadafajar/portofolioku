import 'package:flutter/foundation.dart';

class WebProvider extends ChangeNotifier{
      
      int _navIndex =0;
      int _selectedIndex =0;

      int get navIndex => _navIndex;
      int get selectedIndex => _selectedIndex;

      void setIndex({index}){
        _navIndex = index;
        notifyListeners();
      }

      void selectItemIndex(@required index){
        _selectedIndex = index;
        notifyListeners();
      }

}