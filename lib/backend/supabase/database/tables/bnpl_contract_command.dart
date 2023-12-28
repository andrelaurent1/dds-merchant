import '../database.dart';

class BnplContractCommandTable extends SupabaseTable<BnplContractCommandRow> {
  @override
  String get tableName => 'bnpl_contract_command';

  @override
  BnplContractCommandRow createRow(Map<String, dynamic> data) =>
      BnplContractCommandRow(data);
}

class BnplContractCommandRow extends SupabaseDataRow {
  BnplContractCommandRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BnplContractCommandTable();

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

  String? get contractId => getField<String>('contract_id');
  set contractId(String? value) => setField<String>('contract_id', value);

  DateTime? get dueDate => getField<DateTime>('due_date');
  set dueDate(DateTime? value) => setField<DateTime>('due_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  double? get contractAmount => getField<double>('contract_amount');
  set contractAmount(double? value) =>
      setField<double>('contract_amount', value);

  double? get feeAmount => getField<double>('fee_amount');
  set feeAmount(double? value) => setField<double>('fee_amount', value);

  double? get penaltyAmount => getField<double>('penalty_amount');
  set penaltyAmount(double? value) => setField<double>('penalty_amount', value);

  DateTime? get transactionDate => getField<DateTime>('transaction_date');
  set transactionDate(DateTime? value) =>
      setField<DateTime>('transaction_date', value);
}
