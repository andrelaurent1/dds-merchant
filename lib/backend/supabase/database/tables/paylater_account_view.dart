import '../database.dart';

class PaylaterAccountViewTable extends SupabaseTable<PaylaterAccountViewRow> {
  @override
  String get tableName => 'paylater_account_view';

  @override
  PaylaterAccountViewRow createRow(Map<String, dynamic> data) =>
      PaylaterAccountViewRow(data);
}

class PaylaterAccountViewRow extends SupabaseDataRow {
  PaylaterAccountViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaylaterAccountViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get remainingLimit => getField<double>('remaining_limit');
  set remainingLimit(double? value) =>
      setField<double>('remaining_limit', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  double? get limit => getField<double>('limit');
  set limit(double? value) => setField<double>('limit', value);

  double? get outstandingBalance => getField<double>('outstanding_balance');
  set outstandingBalance(double? value) =>
      setField<double>('outstanding_balance', value);

  bool? get isLimitLow => getField<bool>('is_limit_low');
  set isLimitLow(bool? value) => setField<bool>('is_limit_low', value);
}
