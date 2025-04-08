import 'package:flutter/material.dart';

import '../itemmodel/itemmodel.dart';


class BillItem {
  final String name;
  final int quantity;
  final double price;

  BillItem({required this.name, required this.quantity, required this.price});
}

class MakeProvider extends ChangeNotifier {



  final TextEditingController billNumberController = TextEditingController(text: '#Pos0584521',);
  bool _showText = true;
  bool _rememberMe = false;
  List<ItemModel> _selectedItems = [];
  List<String> _selectedServices = [];

  bool get showText => _showText;
  List<ItemModel> get selectedItems => _selectedItems;
  bool get rememberMe => _rememberMe;
  List<String> get selectedServices => _selectedServices;

  void toggleShowText() {
    _showText = !_showText;
    notifyListeners();
  }
  void setRememberMe(bool value) {
    _rememberMe = value;
    notifyListeners();
  }
  void toggleServiceSelection(String serviceName) {
    if (_selectedServices.contains(serviceName)) {
      _selectedServices.remove(serviceName);
    } else {
      _selectedServices.add(serviceName);
    }
    notifyListeners();
  }
  void toggleItemSelection(ItemModel item, int quantity) {
    if (_selectedItems.contains(item)) {
      _selectedItems.remove(item);
    } else {
      _selectedItems.add(item);
    }
    notifyListeners();
  }
}