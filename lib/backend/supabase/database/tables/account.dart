import '../database.dart';

class AccountTable extends SupabaseTable<AccountRow> {
  @override
  String get tableName => 'account';

  @override
  AccountRow createRow(Map<String, dynamic> data) => AccountRow(data);
}

class AccountRow extends SupabaseDataRow {
  AccountRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccountTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get limit => getField<double>('limit');
  set limit(double? value) => setField<double>('limit', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);
}
