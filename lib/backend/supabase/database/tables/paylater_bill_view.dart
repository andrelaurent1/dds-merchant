import '../database.dart';

class PaylaterBillViewTable extends SupabaseTable<PaylaterBillViewRow> {
  @override
  String get tableName => 'paylater_bill_view';

  @override
  PaylaterBillViewRow createRow(Map<String, dynamic> data) =>
      PaylaterBillViewRow(data);
}

class PaylaterBillViewRow extends SupabaseDataRow {
  PaylaterBillViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaylaterBillViewTable();

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

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

  double? get bill => getField<double>('bill');
  set bill(double? value) => setField<double>('bill', value);

  DateTime? get transactionDate => getField<DateTime>('transaction_date');
  set transactionDate(DateTime? value) =>
      setField<DateTime>('transaction_date', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);

  double? get overdueDays => getField<double>('overdue_days');
  set overdueDays(double? value) => setField<double>('overdue_days', value);
}
