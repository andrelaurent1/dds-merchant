import '../database.dart';

class BnplAccountCommandTable extends SupabaseTable<BnplAccountCommandRow> {
  @override
  String get tableName => 'bnpl_account_command';

  @override
  BnplAccountCommandRow createRow(Map<String, dynamic> data) =>
      BnplAccountCommandRow(data);
}

class BnplAccountCommandRow extends SupabaseDataRow {
  BnplAccountCommandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BnplAccountCommandTable();

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

  String? get accountId => getField<String>('account_id');
  set accountId(String? value) => setField<String>('account_id', value);

  bool? get isActive => getField<bool>('is_active');
  set isActive(bool? value) => setField<bool>('is_active', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get limit => getField<double>('limit');
  set limit(double? value) => setField<double>('limit', value);

  double? get outstandingBalance => getField<double>('outstanding_balance');
  set outstandingBalance(double? value) =>
      setField<double>('outstanding_balance', value);
}
