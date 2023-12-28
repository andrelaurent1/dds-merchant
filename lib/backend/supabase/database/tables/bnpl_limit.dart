import '../database.dart';

class BnplLimitTable extends SupabaseTable<BnplLimitRow> {
  @override
  String get tableName => 'bnpl_limit';

  @override
  BnplLimitRow createRow(Map<String, dynamic> data) => BnplLimitRow(data);
}

class BnplLimitRow extends SupabaseDataRow {
  BnplLimitRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BnplLimitTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get amount => getField<double>('amount');
  set amount(double? value) => setField<double>('amount', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
