import '../database.dart';

class BnplParameterCommandTable extends SupabaseTable<BnplParameterCommandRow> {
  @override
  String get tableName => 'bnpl_parameter_command';

  @override
  BnplParameterCommandRow createRow(Map<String, dynamic> data) =>
      BnplParameterCommandRow(data);
}

class BnplParameterCommandRow extends SupabaseDataRow {
  BnplParameterCommandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BnplParameterCommandTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get op => getField<String>('op')!;
  set op(String value) => setField<String>('op', value);

  DateTime get ts => getField<DateTime>('ts')!;
  set ts(DateTime value) => setField<DateTime>('ts', value);

  dynamic? get record => getField<dynamic>('record');
  set record(dynamic? value) => setField<dynamic>('record', value);

  dynamic? get oldRecord => getField<dynamic>('old_record');
  set oldRecord(dynamic? value) => setField<dynamic>('old_record', value);

  String? get bnplParameterId => getField<String>('bnpl_parameter_id');
  set bnplParameterId(String? value) =>
      setField<String>('bnpl_parameter_id', value);

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
