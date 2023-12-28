import '../database.dart';

class CartItemCommandTable extends SupabaseTable<CartItemCommandRow> {
  @override
  String get tableName => 'cart_item_command';

  @override
  CartItemCommandRow createRow(Map<String, dynamic> data) =>
      CartItemCommandRow(data);
}

class CartItemCommandRow extends SupabaseDataRow {
  CartItemCommandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CartItemCommandTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get op => getField<String>('op')!;
  set op(String value) => setField<String>('op', value);

  DateTime get ts => getField<DateTime>('ts')!;
  set ts(DateTime value) => setField<DateTime>('ts', value);

  dynamic? get record => getField<dynamic>('record');
  set record(dynamic? value) => setField<dynamic>('record', value);

  dynamic? get oldRecord => getField<dynamic>('old_record');
  set oldRecord(dynamic? value) => setField<dynamic>('old_record', value);

  String? get cartItemId => getField<String>('cart_item_id');
  set cartItemId(String? value) => setField<String>('cart_item_id', value);

  String? get cartId => getField<String>('cart_id');
  set cartId(String? value) => setField<String>('cart_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);
}
