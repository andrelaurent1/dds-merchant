import '../database.dart';

class BnplParameterTable extends SupabaseTable<BnplParameterRow> {
  @override
  String get tableName => 'bnpl_parameter';

  @override
  BnplParameterRow createRow(Map<String, dynamic> data) =>
      BnplParameterRow(data);
}

class BnplParameterRow extends SupabaseDataRow {
  BnplParameterRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BnplParameterTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double? get defaultLimit => getField<double>('default_limit');
  set defaultLimit(double? value) => setField<double>('default_limit', value);

  double? get dailyPenaltyAmount => getField<double>('daily_penalty_amount');
  set dailyPenaltyAmount(double? value) =>
      setField<double>('daily_penalty_amount', value);

  int? get gracePeriod => getField<int>('grace_period');
  set gracePeriod(int? value) => setField<int>('grace_period', value);

  double? get feeAmount => getField<double>('fee_amount');
  set feeAmount(double? value) => setField<double>('fee_amount', value);

  int? get dueDate => getField<int>('due_date');
  set dueDate(int? value) => setField<int>('due_date', value);
}
