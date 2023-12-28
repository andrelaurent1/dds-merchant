import '../database.dart';

class StoreCartSessionViewTable extends SupabaseTable<StoreCartSessionViewRow> {
  @override
  String get tableName => 'store_cart_session_view';

  @override
  StoreCartSessionViewRow createRow(Map<String, dynamic> data) =>
      StoreCartSessionViewRow(data);
}

class StoreCartSessionViewRow extends SupabaseDataRow {
  StoreCartSessionViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreCartSessionViewTable();

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);
}
