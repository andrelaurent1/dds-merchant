import '../database.dart';

class StoreInventoryViewTable extends SupabaseTable<StoreInventoryViewRow> {
  @override
  String get tableName => 'store_inventory_view';

  @override
  StoreInventoryViewRow createRow(Map<String, dynamic> data) =>
      StoreInventoryViewRow(data);
}

class StoreInventoryViewRow extends SupabaseDataRow {
  StoreInventoryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreInventoryViewTable();

  String? get inventoryId => getField<String>('inventory_id');
  set inventoryId(String? value) => setField<String>('inventory_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  double? get price => getField<double>('price');
  set price(double? value) => setField<double>('price', value);

  double? get purchasePrice => getField<double>('purchase_price');
  set purchasePrice(double? value) => setField<double>('purchase_price', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  String? get stockUpdateReason => getField<String>('stock_update_reason');
  set stockUpdateReason(String? value) =>
      setField<String>('stock_update_reason', value);

  String? get merchant => getField<String>('merchant');
  set merchant(String? value) => setField<String>('merchant', value);

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  String? get approvalStatus => getField<String>('approval_status');
  set approvalStatus(String? value) =>
      setField<String>('approval_status', value);

  String? get wrongInputRef => getField<String>('wrong_input_ref');
  set wrongInputRef(String? value) =>
      setField<String>('wrong_input_ref', value);
}
