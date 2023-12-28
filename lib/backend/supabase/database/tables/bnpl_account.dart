import '../database.dart';

class BnplAccountTable extends SupabaseTable<BnplAccountRow> {
  @override
  String get tableName => 'bnpl_account';

  @override
  BnplAccountRow createRow(Map<String, dynamic> data) => BnplAccountRow(data);
}

class BnplAccountRow extends SupabaseDataRow {
  BnplAccountRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BnplAccountTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get balance => getField<double>('balance');
  set balance(double? value) => setField<double>('balance', value);
}
