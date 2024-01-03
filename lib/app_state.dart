import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _merchantID = prefs.getString('ff_merchantID') ?? _merchantID;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _merchantID = '';
  String get merchantID => _merchantID;
  set merchantID(String _value) {
    _merchantID = _value;
    prefs.setString('ff_merchantID', _value);
  }

  List<int> _UnitsSoldPerProduct = [];
  List<int> get UnitsSoldPerProduct => _UnitsSoldPerProduct;
  set UnitsSoldPerProduct(List<int> _value) {
    _UnitsSoldPerProduct = _value;
  }

  void addToUnitsSoldPerProduct(int _value) {
    _UnitsSoldPerProduct.add(_value);
  }

  void removeFromUnitsSoldPerProduct(int _value) {
    _UnitsSoldPerProduct.remove(_value);
  }

  void removeAtIndexFromUnitsSoldPerProduct(int _index) {
    _UnitsSoldPerProduct.removeAt(_index);
  }

  void updateUnitsSoldPerProductAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _UnitsSoldPerProduct[_index] = updateFn(_UnitsSoldPerProduct[_index]);
  }

  void insertAtIndexInUnitsSoldPerProduct(int _index, int _value) {
    _UnitsSoldPerProduct.insert(_index, _value);
  }

  List<double> _SalesPerProduct = [];
  List<double> get SalesPerProduct => _SalesPerProduct;
  set SalesPerProduct(List<double> _value) {
    _SalesPerProduct = _value;
  }

  void addToSalesPerProduct(double _value) {
    _SalesPerProduct.add(_value);
  }

  void removeFromSalesPerProduct(double _value) {
    _SalesPerProduct.remove(_value);
  }

  void removeAtIndexFromSalesPerProduct(int _index) {
    _SalesPerProduct.removeAt(_index);
  }

  void updateSalesPerProductAtIndex(
    int _index,
    double Function(double) updateFn,
  ) {
    _SalesPerProduct[_index] = updateFn(_SalesPerProduct[_index]);
  }

  void insertAtIndexInSalesPerProduct(int _index, double _value) {
    _SalesPerProduct.insert(_index, _value);
  }

  List<String> _productNamePerMonth = [];
  List<String> get productNamePerMonth => _productNamePerMonth;
  set productNamePerMonth(List<String> _value) {
    _productNamePerMonth = _value;
  }

  void addToProductNamePerMonth(String _value) {
    _productNamePerMonth.add(_value);
  }

  void removeFromProductNamePerMonth(String _value) {
    _productNamePerMonth.remove(_value);
  }

  void removeAtIndexFromProductNamePerMonth(int _index) {
    _productNamePerMonth.removeAt(_index);
  }

  void updateProductNamePerMonthAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _productNamePerMonth[_index] = updateFn(_productNamePerMonth[_index]);
  }

  void insertAtIndexInProductNamePerMonth(int _index, String _value) {
    _productNamePerMonth.insert(_index, _value);
  }

  List<String> _DateSold = [];
  List<String> get DateSold => _DateSold;
  set DateSold(List<String> _value) {
    _DateSold = _value;
  }

  void addToDateSold(String _value) {
    _DateSold.add(_value);
  }

  void removeFromDateSold(String _value) {
    _DateSold.remove(_value);
  }

  void removeAtIndexFromDateSold(int _index) {
    _DateSold.removeAt(_index);
  }

  void updateDateSoldAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _DateSold[_index] = updateFn(_DateSold[_index]);
  }

  void insertAtIndexInDateSold(int _index, String _value) {
    _DateSold.insert(_index, _value);
  }

  String _oldMerchantId = '';
  String get oldMerchantId => _oldMerchantId;
  set oldMerchantId(String _value) {
    _oldMerchantId = _value;
  }

  String _pinStatus = '';
  String get pinStatus => _pinStatus;
  set pinStatus(String _value) {
    _pinStatus = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
