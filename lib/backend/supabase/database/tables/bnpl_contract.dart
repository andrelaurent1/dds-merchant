import '../database.dart';

class BnplContractTable extends SupabaseTable<BnplContractRow> {
  @override
  String get tableName => 'bnpl_contract';

  @override
  BnplContractRow createRow(Map<String, dynamic> data) => BnplContractRow(data);
}

class BnplContractRow extends SupabaseDataRow {
  BnplContractRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BnplContractTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

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
