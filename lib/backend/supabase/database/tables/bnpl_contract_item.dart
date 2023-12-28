import '../database.dart';

class BnplContractItemTable extends SupabaseTable<BnplContractItemRow> {
  @override
  String get tableName => 'bnpl_contract_item';

  @override
  BnplContractItemRow createRow(Map<String, dynamic> data) =>
      BnplContractItemRow(data);
}

class BnplContractItemRow extends SupabaseDataRow {
  BnplContractItemRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => BnplContractItemTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get contractId => getField<String>('contract_id');
  set contractId(String? value) => setField<String>('contract_id', value);

  String? get orderId => getField<String>('order_id');
  set orderId(String? value) => setField<String>('order_id', value);
}
