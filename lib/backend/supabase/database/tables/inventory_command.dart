import '../database.dart';

class InventoryCommandTable extends SupabaseTable<InventoryCommandRow> {
  @override
  String get tableName => 'inventory_command';

  @override
  InventoryCommandRow createRow(Map<String, dynamic> data) =>
      InventoryCommandRow(data);
}

class InventoryCommandRow extends SupabaseDataRow {
  InventoryCommandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => InventoryCommandTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get op => getField<String>('op')!;
  set op(String value) => setField<String>('op', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  dynamic? get record => getField<dynamic>('record');
  set record(dynamic? value) => setField<dynamic>('record', value);

  dynamic? get oldRecord => getField<dynamic>('old_record');
  set oldRecord(dynamic? value) => setField<dynamic>('old_record', value);

  String? get inventoryId => getField<String>('inventory_id');
  set inventoryId(String? value) => setField<String>('inventory_id', value);

  double? get purchasePrice => getField<double>('purchase_price');
  set purchasePrice(double? value) => setField<double>('purchase_price', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  String? get stockUpdateReason => getField<String>('stock_update_reason');
  set stockUpdateReason(String? value) =>
      setField<String>('stock_update_reason', value);

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  String? get approvalStatus => getField<String>('approval_status');
  set approvalStatus(String? value) =>
      setField<String>('approval_status', value);

  String? get wrongInputRef => getField<String>('wrong_input_ref');
  set wrongInputRef(String? value) =>
      setField<String>('wrong_input_ref', value);
}
