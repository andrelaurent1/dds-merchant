import '../database.dart';

class StoreOrderSummaryViewTable
    extends SupabaseTable<StoreOrderSummaryViewRow> {
  @override
  String get tableName => 'store_order_summary_view';

  @override
  StoreOrderSummaryViewRow createRow(Map<String, dynamic> data) =>
      StoreOrderSummaryViewRow(data);
}

class StoreOrderSummaryViewRow extends SupabaseDataRow {
  StoreOrderSummaryViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreOrderSummaryViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get paymentType => getField<String>('payment_type');
  set paymentType(String? value) => setField<String>('payment_type', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);
}
