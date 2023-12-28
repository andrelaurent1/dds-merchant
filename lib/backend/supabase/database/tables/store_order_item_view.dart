import '../database.dart';

class StoreOrderItemViewTable extends SupabaseTable<StoreOrderItemViewRow> {
  @override
  String get tableName => 'store_order_item_view';

  @override
  StoreOrderItemViewRow createRow(Map<String, dynamic> data) =>
      StoreOrderItemViewRow(data);
}

class StoreOrderItemViewRow extends SupabaseDataRow {
  StoreOrderItemViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreOrderItemViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get qty => getField<int>('qty');
  set qty(int? value) => setField<int>('qty', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  String? get productId => getField<String>('product_id');
  set productId(String? value) => setField<String>('product_id', value);
}
