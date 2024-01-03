import '../database.dart';

class CashSettlementCommandTableTable
    extends SupabaseTable<CashSettlementCommandTableRow> {
  @override
  String get tableName => 'cash_settlement_command_table';

  @override
  CashSettlementCommandTableRow createRow(Map<String, dynamic> data) =>
      CashSettlementCommandTableRow(data);
}

class CashSettlementCommandTableRow extends SupabaseDataRow {
  CashSettlementCommandTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CashSettlementCommandTableTable();

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

  String? get cashSettlementId => getField<String>('cash_settlement_id');
  set cashSettlementId(String? value) =>
      setField<String>('cash_settlement_id', value);

  double? get revenue => getField<double>('revenue');
  set revenue(double? value) => setField<double>('revenue', value);

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get cashOutAmount => getField<double>('cash_out_amount');
  set cashOutAmount(double? value) =>
      setField<double>('cash_out_amount', value);

  double? get profitSharing => getField<double>('profit_sharing');
  set profitSharing(double? value) => setField<double>('profit_sharing', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get pin => getField<String>('pin');
  set pin(String? value) => setField<String>('pin', value);

  String? get pinKey => getField<String>('pin_key');
  set pinKey(String? value) => setField<String>('pin_key', value);

  String? get pinNonce => getField<String>('pin_nonce');
  set pinNonce(String? value) => setField<String>('pin_nonce', value);

  String? get pinRequestid => getField<String>('pin_requestid');
  set pinRequestid(String? value) => setField<String>('pin_requestid', value);
}
