import '../database.dart';

class AccountViewTable extends SupabaseTable<AccountViewRow> {
  @override
  String get tableName => 'account_view';

  @override
  AccountViewRow createRow(Map<String, dynamic> data) => AccountViewRow(data);
}

class AccountViewRow extends SupabaseDataRow {
  AccountViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccountViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  double? get limit => getField<double>('limit');
  set limit(double? value) => setField<double>('limit', value);

  double? get totalAmount => getField<double>('total_amount');
  set totalAmount(double? value) => setField<double>('total_amount', value);

  double? get remainingLimit => getField<double>('remaining_limit');
  set remainingLimit(double? value) =>
      setField<double>('remaining_limit', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  bool? get isLimitLow => getField<bool>('is_limit_low');
  set isLimitLow(bool? value) => setField<bool>('is_limit_low', value);
}
