import '../database.dart';

class PaylaterContractItemViewTable
    extends SupabaseTable<PaylaterContractItemViewRow> {
  @override
  String get tableName => 'paylater_contract_item_view';

  @override
  PaylaterContractItemViewRow createRow(Map<String, dynamic> data) =>
      PaylaterContractItemViewRow(data);
}

class PaylaterContractItemViewRow extends SupabaseDataRow {
  PaylaterContractItemViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaylaterContractItemViewTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get contractId => getField<String>('contract_id');
  set contractId(String? value) => setField<String>('contract_id', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get fullName => getField<String>('full_name');
  set fullName(String? value) => setField<String>('full_name', value);
}
