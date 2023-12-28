import '../database.dart';

class StoreCashSettlementViewTable
    extends SupabaseTable<StoreCashSettlementViewRow> {
  @override
  String get tableName => 'store_cash_settlement_view';

  @override
  StoreCashSettlementViewRow createRow(Map<String, dynamic> data) =>
      StoreCashSettlementViewRow(data);
}

class StoreCashSettlementViewRow extends SupabaseDataRow {
  StoreCashSettlementViewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => StoreCashSettlementViewTable();

  double? get cashOutAmount => getField<double>('cash_out_amount');
  set cashOutAmount(double? value) =>
      setField<double>('cash_out_amount', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get profitSharing => getField<double>('profit_sharing');
  set profitSharing(double? value) => setField<double>('profit_sharing', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get revenue => getField<double>('revenue');
  set revenue(double? value) => setField<double>('revenue', value);

  String? get merchantId => getField<String>('merchant_id');
  set merchantId(String? value) => setField<String>('merchant_id', value);
}
