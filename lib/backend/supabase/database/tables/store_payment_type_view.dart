import '../database.dart';

class StorePaymentTypeViewTable extends SupabaseTable<StorePaymentTypeViewRow> {
  @override
  String get tableName => 'store_payment_type_view';

  @override
  StorePaymentTypeViewRow createRow(Map<String, dynamic> data) =>
      StorePaymentTypeViewRow(data);
}

class StorePaymentTypeViewRow extends SupabaseDataRow {
  StorePaymentTypeViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StorePaymentTypeViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);
}
